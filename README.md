# Fotobox
A party fotobox where guests can download their fotos from

## How it works:

The camera is tethered to a directory inside the fotobox directory -in the script referred to as "eyefifolder/2019" - how to tether depends on the camera you use, (I have an eyefi sd-card and used a [script by Jeff Tschang](http://www.returnbooleantrue.com/2009/01/eye-fi-standalone-server.html))

once the script is running it searches the directory for new images, renames them to Fotobox$number.jpg and moves it to the images directory.

The imgviewer.html has an embedded script that looks for new fotos in the images directory and displays them when found.
If there are no new fotos it cycles through all the fotos as a slideshow.


- I used a docker container as a web server to host the fotobox in an open wifi network I had set up.
The party guests could connect to it and access the fotobox via http.
