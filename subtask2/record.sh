#!/bin/bash
Sunday=$(date -d 'last Sunday -0 day' +%F)
Saturday=$(date -d 'last Sunday -1 day' +%F)
Friday=$(date -d 'last Sunday -2 day' +%F)
Thursday=$(date -d 'last Sunday -3 day' +%F)
Wednesday=$(date -d 'last Sunday -4 day' +%F)
Tuesday=$(date -d 'last Sunday -5 day' +%F)
Monday=$(date -d 'last Sunday -6 day' +%F)
read x
if [ $x == 1 ]
	then grep $Monday /home/ArmyGeneral/Attendance_record.txt
	elif [ $x == 2 ]
		then grep $Tuesday /home/ArmyGeneral/Attendance_record.txt
		elif [ $x == 3 ]
			then grep $Wednesday /home/ArmyGeneral/Attendance_record.txt
			elif [ $x == 4 ]
				then grep $Thursday /home/ArmyGeneral/Attendance_record.txt
				elif [ $x == 5 ]
					then grep $Friday /home/ArmyGeneral/Attendance_record.txt
					elif [ $x == 6 ]
						then grep $Saturday /home/ArmyGeneral/Attendance_record.txt
	else grep $Sunday /home/ArmyGeneral/Attendance_record.txt
fi
