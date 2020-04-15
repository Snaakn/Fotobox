C=$1
while true; do
 echo "Counter: $C"

 echo |ls
if [ -z "$(ls -A eyefifolder/2019/*)" ]; then
    echo "directory is empty"
else
    echo "Not Empty"

 for f in eyefifolder/2019/*/*; do
	killall feh
	echo "File: $f"
	#I used a darktable xmp file to process the images
	#darktable-cli $f global.xmp /images/Fotobox$C.jpg
	
	# copy the new image to the images directory and change its name so the viewer recognises it
	cp $f /images/Fotobox$C.jpg

	# old code: the images were saved to another location with their number written on it
	# and then shown to the party guests on the screen so they could download their foto
	#convert $f -background none -fill red -font Chilanka -pointsize 300 label:"$C" -gravity South -compose over -composite $f
	#feh $f --fullscreen --on-last-slide=quit -D5 && killall feh
	#mv $f out/$C.jpg
	C=$((C+1))
 done
  # feh is a commandline image viewer tool
  # feh out/* --fullscreen -D5 & disown 
fi
echo "Counter: $C"
 sleep 5
done

