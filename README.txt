# Chimp261812
This is my modified version of Chimp261811, it has a cleaner UI and improvements to the cloning process and all round usage.

This Xbox Application is used to clone Xbox hard drives via the Xbox itself.

How to clone your Hard drive using Chimp 261812 from start to finish.
https://www.youtube.com/watch?v=lBC9599ww6I


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
Added in HDTool to try locking the drive if HDTool2 fails. ( shouldn't matter but worth a try )
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
