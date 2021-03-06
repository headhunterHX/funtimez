#!/usr/bin/env bash

# update packages
sudo apt-get update

# nginx
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant
ln -s /vagrant /var/www

#changing hosts values to accept new url destination
sudo echo '192.168.68.8    test.com' > temp_file.csv
sudo cat /etc/hosts >> temp_file.csv
sudo mv temp_file.csv /etc/hosts