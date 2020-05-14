#!/bin/bash
#to create the text file in each soldier's directory with two columns
for i in {1..50..1}
do
sudo touch /home/Army$i/Post_allotted.txt
sudo touch /home/Navy$i/Post_allotted.txt
sudo touch /home/AirForce$i/Post_allotted.txt
done
#update the text file in each soldier's directory
for i in {1..50..1}
do
sudo curl https://inductions.delta.nitt.edu/sysad-task1-position.log|grep -w Army$i|awk '{print $1"\t" $3"\t" $4;}'|sed 's/-00.00.00/ /'|cat > /home/Army$i/Post_allotted.txt
sudo curl https://inductions.delta.nitt.edu/sysad-task1-position.log|grep -w Navy$i|awk '{print $1"\t" $3"\t" $4;}'|sed 's/-00.00.00/ /'|cat > /home/Navy$i/Post_allotted.txt
sudo curl https://inductions.delta.nitt.edu/sysad-task1-position.log|grep -w AirForce$i|awk '{print $1"\t" $3 "\t" $4;}'|sed 's/-00.00.00/ /'|cat > /home/AirForce$i/Post_allotted.txt
done


