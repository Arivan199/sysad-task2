#!/bin/bash
#ChiefCommander is the super user to access all the directories
sudo usermod -aG sudo ChiefCommander
#ChiefCommander's directory can be accessed by him only
sudo chmod 700 /home/ChiefCommander
#troop chief's directory cannot be accessed by other troop chiefs and soldiers
sudo chmod 770 /home/ArmyGeneral
sudo chmod 770 /home/NavyMarshal
sudo chmod 770 /home/AirForceChief
#soldier's directories can be accessed by himself and his chief only
#give chief troop access to his group soldier's directory
for i in {1..50..1}
do
sudo chmod 770 /home/Army$i
sudo setfacl -m u:ArmyGeneral:rwx /home/Army$i
sudo chmod 770 /home/Navy$i
sudo setfacl -m u:NavyMarshal:rwx /home/Navy$i
sudo chmod 770 /home/AirForce$i
sudo setfacl -m u:AirForceChief:rwx /home/AirForce$i
done
