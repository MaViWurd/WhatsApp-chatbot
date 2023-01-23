#!/bin/bash

# Update package lists
sudo apt-get update

# Install Node.js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install MySQL
sudo apt-get install -y mysql-server

# Install necessary packages for connecting to MySQL
sudo npm install -g mysql2
sudo npm install -g sequelize

# Create a new Node.js project
mkdir new-project
cd new-project
npm init -y

# Install necessary packages for connecting to MySQL
npm install mysql2
npm install sequelize

# Create a new MySQL database and user
mysql -u root -p -e "CREATE DATABASE new_project;"
mysql -u root -p -e "CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON new_project.* TO 'new_user'@'localhost';"
mysql -u root -p -e "FLUSH PRIVILEGES;"

