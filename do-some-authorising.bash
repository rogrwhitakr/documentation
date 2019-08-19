#! /usr/bin/env bash
echo "changing permissions and such"

sudo find /var/www -type f -exec chmod 644 {} \; 
sudo find /var/www -type d -exec chmod 755 {} \;

# check apache logs
sudo tail -f /var/log/httpd/access_log /var/log/httpd/error_log

# edit virtual hosts file
sudo touch /etc/httpd/conf.d/aurora.conf
sudo nano /etc/httpd/conf.d/aurora.conf

# copy to repo
sudo cp /etc/httpd/conf.d/aurora.conf /var/home/benno/northern-lights/apps/apache/conf.d-aurora.conf
cp /etc/httpd/conf.d/icons.conf ~/northern-lights/apps/apache/conf.d-icons.conf
# moving to /var/www/aurora has worked. something about home dirs i assume

# changing the index.html, collecting links
grep '<h1 class="title1">' web/automate-the-boring-stuff/chapter*.html >> web/automate-the-boring-stuff/index.html 

# replace the link back to home with localhost:home
sed --in-place 's/https:\/\/automatetheboringstuff.com\//index.html/g' chapter*.html 