#port 80 of the container is mapped outside with port 3333 .therfore reverse proxy soldier.io to 127.0.0.1:3333 opens complaint page inside the container 
sudo echo "<VirtualHost *:80>
   ProxyPass / http://127.0.0.1:3333/
      </VirtualHost>                  " >> /etc/apache2/sites-available/soldier.io.conf

#need to enable proxy and proxy_http mods 
sudo a2ensite soldier.io
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo service apache2 reload
