echo "alias userGenerate='chmod +x createuser.sh|bash /createuser.sh'" >> /etc/bash.bashrc
echo "alias permit='chmod +x permit.sh|bash /permit.sh'" >> /etc/bash.bashrc
echo "alias autoSchedule='chmod +x autoschedule.sh|bash /autoschedule.sh|echo "00 00 * * * /bin/sh autoschedule.sh">> /etc/crontab'" >> /etc/bash.bashrc
echo "alias attendance='chmod +x attendance.sh|bash /attendance.sh|chmod +x automation.sh|bash /automation.sh'" >>/etc/bash.bashrc
echo "alias record='chmod +x record.sh|bash /record.sh'" >> /etc/bash.bashrc
echo "alias finalattendance='chmod +x final_attendance.sh|bash /final_attendance.sh'" >> /etc/bash.bashrc
echo "alias nearest='chmod +x nearest.sh|bash /nearest.sh'" >> /etc/bash.bashrc
