#create the root web directory and assign the permission
sudo mkdir /var/www/soldier.io/public_html
sudo chmod 755 /var/www

#create the webpages inside the webdirectory
sudo touch /etc/www/soldier.io/public_html/index.php
sudo touch /etc/www/soldier.io/public_html/attendance_record.php

#apache2 configurations to enable the site
sudo touch /etc/apache2/sites-available/soldier.io.conf
sudo echo "<virtualHost *:80>
       ServerName soldier.io
       ServerAdmin info@soldier.io
       ServerAlias www.soldier.io
       DocumentRoot /var/www/soldier.io/public_html
       ErrorLog ${APACHE_LOG_DIR}/error.log
       CustomLog ${APACHE_LOG_DIR}/access.log combined
       </virtualHost>" > /etc/apache2/sites-available/soldier.io.conf
sudo echo "127.0.0.1  soldier.io" >> /etc/hosts
sudo a2ensite soldier.io.conf
sudo a2dissite 000-default.conf
sudo service apache2 restart

#create profile page in each troop's home directory
for i in {1..50..1}
{
do
sudo touch /home/Army$i/index.html
sudo touch /home/Navy$i/index.html
sudo touch /home/AirForce$i/index.html
done
}

#design the page 1 of soldier.io in each troop's directory
for i in {1..50..1}
{
do
#Army troop's html page
sudo echo "<html>
<head><title>Army$i</title></head>
<body>
<center><h1>Welcome Army$i</h1>
<p>This is your page...</p>
</body>
</html>    " > /home/Army$i/public_html/index.html

#Navy Troop's html page
sudo echo "<html>
<head><title>Navy$i</title></head>
<body>
<center><h1>Welcome Navy$i</h1>
<p>This is your page...</p>
</body>
</html>    " > /home/Navy$i/public_html/index.html

#AirForce troop's html page
sudo echo "<html>
<head><title>AirFoeceChief$i</title></head>
<body>
<center><h1>Welcome AirFoeceChief$i</h1>
<p>This is your homepage...</p>
</body>
</html>    " > /home/Army$i/public_html/index.html
done
}

#ensure the redirection
sudo a2enmod rewrite
sudo touch /var/www/soldier.io/.htaccess
sudo service apache2 reload
sudo a2enmod userdir
sudo nano /etc/apache2/mods-available/userdir.conf
sudo echo "<IfModule mod_userdir.c>
     UserDir public_html
     UserDir disabled root

        <Directory /home/*/public_html>
             AllowOverride FileInfo AuthConfig Limit Indexes
             Options MultiViews Indexes SymLinksIfOwnerMatch IncludesNoExec
             Require method GET POST OPTIONS
        </Directory>
</IfModule>" > /etc/apache2/mods-available/userdir.conf
sudo service apache2 restart
