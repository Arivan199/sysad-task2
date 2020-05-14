#!/bin/bash
#first create the nearest10 file in ChiefCommander
#To find the 10 armies posted near Delhi city
#need to calculate the distance between Delhi city and each posts where army presented in the following day
#to calculate the distance nedd four variables
#such as latitude and longtitude of Delhi city , latitude and longtitude of the particular city
#therefore the presented armys post's latitude and longtitude are greped from the position file
#find the distance etween two locations using the formula
#write the name of the army and corresponding distance and corresponding dates in the nearest10 file 
#sort the file according to the second column data
#using the head command just filter first ten positions
#therefore nearest ten posts are reported
sudo touch /home/ChiefCommander/nearest10
lng1=77.1025;
lat1=28.7041;
for i in {1..50..1}
do
 d=$(date +%F)
 a=$(grep -w $d /home/ArmyGeneral/Attendance_record.txt|grep -w Army$i |awk '{print $2;}')
 lng2=$(curl https://inductions.delta.nitt.edu/sysad-task1-position.log|grep -w $d|grep -w $a|awk '{print $4;}'|sed 's/E°//');
 lat2=$(curl https://inductions.delta.nitt.edu/sysad-task1-position.log|grep -w $d|grep -w $a|awk '{print $3;}'|sed 's/N°//');
 teta=$(echo "$lng1 - $lng2"|bc -l)
 dtrlat1=$(echo "$lat1 * 3.14 / 180"|bc -l)
 dtrlat2=$(echo "$lat2 * 3.14 / 180"|bc -l)
 dtrteta=$(echo "$teta * 3.14 / 180"|bc -l)
 sinlat1=$(bc -l <<< "s($dtrlat1)")
 sinlat2=$(bc -l <<< "s($dtrlat2)")
 coslat1=$(bc -l <<< "c($dtrlat1)")
 coslat2=$(bc -l <<< "c($dtrlat2)")
 costeta=$(bc -l <<< "c($dtrteta)")
 distance=$(echo "$sinlat1 * $sinlat2 + $coslat1 * $coslat2 * $costeta"|bc -l)
 distance=$(echo "$distance * 60"|bc -l)
 distance=$(echo "$distance * 1852"|bc -l)
 if [ -z "$distance" ]
 	then echo "Failed"
 	else echo "Army$i   $distance"|column -t|cat >> /home/ChiefCommander/nearest10
 fi
done
sort -k2 /home/ChiefCommander/nearest10|head|awk '{print $1}'|cat > /home/ChiefCommander/nearest10
