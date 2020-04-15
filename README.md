# Fotobox
A party fotobox where guests can download their fotos from

## How it works:

The camera is tethered to a directory inside the fotobox directory-
in the script it is "eyefifolder/2019"

once the script is running it searches the directory for new images, renames them to Fotobox$number.jpg and moves it to the images directory.

The imgviewer.html has an embedded script that looks for new fotos in the images directory and displays them when found.
If there are no new fotos it cycles through all the fotos as a slideshow.


- I used a docker container as a web server to host the fotobox in an open wifi network I had set up
the party guests could connect to it and access the fotobox via http://fotobox/ which lead to the index.html where they had to put in the fotocode to download their picture
