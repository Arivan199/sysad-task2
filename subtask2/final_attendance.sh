#!/bin/bash
#create attendance_report text file in chief commander directory
sudo touch /home/ChiefCommander/attendance_report 
#create attendance list of Army troops
sudo printf "attendance record of Army Troops\n*====================================*\n\n" >> /home/ChiefCommander/attendance_report
for i in {1..50..1}
do
sudo echo "Army$i Attendance List"|cat >> /home/ChiefCommander/attendance_report
sudo grep -w Army$i /home/ArmyGeneral/Attendance_record.txt|awk '{print $1;}'|tr '\n' ' '|cat >> /home/ChiefCommander/attendance_report
sudo printf "\n\n" >> /home/ChiefCommander/attendance_report
done
#create attendance report of Navy troops
sudo printf "\nattendance record of Navy Troops\n*====================================*\n\n" >> /home/ChiefCommander/attendance_report
for i in {1..50..1}
do
sudo echo "Navy$i Attendance List" |cat >> /home/ChiefCommander/attendance_report
sudo grep -w Navy$i /home/NavyMarshal/Attendance_record.txt|awk '{print $1;}' |tr '\n' ' '|cat >> /home/ChiefCommander/attendance_report
sudo printf "\n\n" >> /home/ChiefCommander/attendance_report
done
#create attendance report of AirForce troops
sudo printf "\nattendance record of AirForce Troops\n*====================================*\n\n" >> /home/ChiefCommander/attendance_report
for i in {1..50..1}
do
sudo echo "AirForce$i Attendance List" >> /home/ChiefCommander/attendance_report
sudo grep -w AirForce$i /home/AirForceChief/Attendance_record.txt|awk '{print $1;}'|tr '\n' ' '|cat >> /home/ChiefCommander/attendance_report
sudo printf "\n\n" >> /home/ChiefCommander/attendance_report
done
