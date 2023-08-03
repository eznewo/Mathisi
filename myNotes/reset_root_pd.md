# To reset a root passwod in Redhat

Step: 1
	Reboot
	e
	+ to linux16/...... --> rd.break
	ctrl + x
	mount -o remount,rw /sysroot
	chroot /sysroot
	passwd root
		******
		******
	touch /.autorelable
	exit
	exit
 
