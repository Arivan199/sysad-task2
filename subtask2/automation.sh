$!/bin/bash
#automate the updation everyday for 
sudo echo "00 06 * * * /bin/sh /home/ArmyGeneral/attendance.sh"|cat >> /etc/crontab
sudo echo "00 06 * * * /bin/sh /home/NavyMarshal/attendance.sh"|cat >> /etc/crontab
sudo echo "00 06 * * * /bin/sh /home/AirForceChief/attendance.sh"|cat >> /etc/crontab
#
