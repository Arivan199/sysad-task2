#!/bin/bash
#create attendance_record in each troop chief's directory
sudo touch /home/ArmyGeneral/Attendance_record.txt
sudo touch /home/NavyMarshal/Attendance_record.txt
sudo touch /home/AirForceChief/Attendance_record.txt
#update attendance log
sudo curl https://inductions.delta.nitt.edu/sysad-task1-attendance.log|awk '/Army/{print $1" "$2" "$3}' |awk '/YES/{print $1" "$2}'|sed 's/-06.00.00/ /'|cat > /home/ArmyGeneral/Attendance_record.txt
sudo curl https://inductions.delta.nitt.edu/sysad-task1-attendance.log|awk '/Navy/{print $1" "$2" "$3}' |awk '/YES/{print $1" "$2}'|sed 's/-06.00.00/ /'|cat > /home/NavyMarshal/Attendance_record.txt
sudo curl https://inductions.delta.nitt.edu/sysad-task1-attendance.log|awk '/AirForce/{print $1" "$2" "$3}' |awk '/YES/{print $1" "$2}'|sed 's/-06.00.00/ /'|cat > /home/AirForceChief/Attendance_record.txt
