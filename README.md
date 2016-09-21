# Batch-Files
Windows batch files I've created to make my life easier.
##The files
###Robodelete
There are several projects at work which have a path length which exceeds Windows's ability to simply delete them. There are two batch files in this set:
* deleteDir.bat - the basic implementation. Drop the batch file at the same level as the directory to delete and double-click. It will ask you for the folder name and proceed to delete it.
* deleteDirectory.bat - context menu implementation. Combined with the included registry file, this batch file will allow you to right-click a directory and delete it. The registry file assumes you have a "Batch Files" directory in your user documents folder. Edit the reg file with your text editor of choice if you want to keep your batch files elsewhere (e.g. in your Github directory).

###NetworkOnOff
There are times when I need to force my PC to connect to a specific type of network (wired vs. wireless). These batch files turn on or off the wired and wireless network adapters on my machine. The names are specific strings you can obtain by running "ipconfig" from the command line.
