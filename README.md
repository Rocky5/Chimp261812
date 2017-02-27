# Chimp261812
This is my modified version of Chimp261811, it has a cleaner UI and improvements to the cloning process and all round usage.

This Xbox Application is used to clone Xbox hard drives via the Xbox itself.

How to clone your Hard drive using Chimp 261812 from start to finish.
https://www.youtube.com/watch?v=lBC9599ww6I


==================================================================
Small fix - 27/02/2017:
==================================================================
Fixed the cloning of the G partition :\


==================================================================
Small update - 23/02/2017:
==================================================================
Changed the partition that the external eeprom.bin is placed as the fatx driver for linux is not the greatest and can fail to show all files if there are a lot of files/folders on the partition.
( So now its Y:\eeprom.bin )


==================================================================
Another small update - 15/02/2017:
==================================================================
Forgot the remove a part of the new partition info code, all fixed now.
( It doesn't effect anything other than making the menu load slightly faster )

Also changed the initialize ( black background white text ) screen.


==================================================================
Another small update - 14/02/2017:
==================================================================
Redone the Partition information screen, now shows information in a nice manor.

Added a check to see if its a CD-ROM or a hard drive when loading.
( this stops any errors appearing if you are using chimp with a DVD drive connected )

Added a check for maximum lock status when selecting clone from the menu.


==================================================================
Another small update - 7/02/2017:
==================================================================
Fixed the master HDD not displaying as locked if its security level was maximum.
( wont make a difference since the user cant unlock the drive )


==================================================================
Another small update - 12/01/2017:
==================================================================

Updated the lock status code, as some drive only support "Security level maximum"
( if you have a drive like this. It cannot be unlocked using a master password, only the eeprom password. )

Added in HDTool to try locking the drive if HDTool2 fails.
( shouldn't matter but worth a try )

Updated the "Scan physical ide devices" section, also now if a CD-Rom is detected it hides some of the info.

==================================================================
Another small update - 17/12/2016:
==================================================================

Well it would seem I have to change the menu system because people still unlock there softmodded Xbox HDD when the options are disabled by default.

So I have added a new menu and a disclaimer that you must agree to when you pick an option.

I also disabled options based on the mod type you select and also made the lock HDD error a but more pleasing to the eye.

Note: If you get the slave drive error about locking, this is because HDTool cannot lock the drive, there is nothing I can do to fix this.


==================================================================
Another small update - 09/12/2016:
==================================================================

Slight change to the locking dialogue after a successful clone.

Added a slave drive lock check when the menu loads, and I also disable options if the drive cannot be locked.
( This should help people when faced with a non lockable HDD, saves cloning to find out :D )


==================================================================
Another small update - 28/11/2016:
==================================================================

Moved to psyko_chewbacca version of GentooxLoader, he had updated the loader and recommended using it as his can also be compiled on modern linux systems.

So its the same edits as before just on a more up to date source.
	
	psyko_chewbacca modified GentooxLoader can be found here
	https://bitbucket.org/psyko_chewbacca/gentooxloader

	
==================================================================
Small update - 25/11/2016:
==================================================================

Added my modified version of Gentoox loader that auto boot chimp and boot from 6 locations on the E partition.
( note: E partition is mandatory )

	E:\applications\chimp
	E:\applications\chimp loader
	E:\apps\chimp
	E:\apps\chimp loader
	E:\chimp
	E:\chimp loader

Also changed the wording of the Fix error 16 dialogue.


==================================================================
Small update - 05/08/2016:
==================================================================

Added a new option to the Slave drive options.

Fix Error 16, this will clone your working C partition from your master drive.
(it only clones the C partition, all other partitions & partition table if present stay intact)


==================================================================
Old Chimp 261812 Changes
==================================================================

	1.	Redone the menus.
	2.	Added lock master HDD.
		(not sure why its not there by default)
	3.	Added format extra partitions for slave drive.
	4.	Changed buffer size back to 512kb, as anything above this value will result in error 13.
	5.	Removed -d from hdtool in lockhda & lockhdb as hdtool doesn't use -d.
	6.	Fixed the Pipe Viewer (Progress bar you see when cloning a HDD) fits the screen better.
	7.	Also padded the top of the screen for the above & the no progress variant.
		(was required to compensate for overscan)
	8.	Changed the menu system in lpartitionerhda & lpartitionerhdb, stops the error about line 106.
	9.	Changed how the IDE information is gathered.
		(its a lot cleaner looking)
	10.	Moved the formating of the slave hd untill after the user chooses the options.
		(saves on time for me testing things & means the user can exit before formating the slave drive)
	11.	Removed the bloody flashing cursor!
	12.	Option to lock the slave hd after the cloning procedure is complete.
	13.	Changed the shell background colour for Linux shell & for all other instances.
	14.	Fixed the scanpartitions shell script, now mounts the drives and added a umount version.
		(note this isnt used, but I just fixed it anyways.)
	15.	Added support for E:\eeprom.bin on the xbox fatx partition.
		(ie, before you launch chimp & its case sensitive.)
	16.	Advanced settings, for the Master HD.
		(Enable in settings)
	17.	Added a more informative error screen for no partition table found.
	18.	Updated cloning to dynamically get the byte size.
		(faster cloning depending on the partition size)
	19.	New cloning options.
	20.	Shutdown & Restart confirm dialogues.
	21.	New gentoox loader that auto boots chimp.
	22.	Probably more changes, but lost track. :/