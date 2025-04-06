#!/bin/bash

# Automated LAMP Stack Server Installer
# Author: boniyeamincse
# Date: 2025-04-06

# Function to display the banner
display_banner() {
    echo "▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄    ▄      "
    echo "▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌     ▐░▌          ▐░░░░░░░░░░░▌▐░░▌     ▐░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌     "
    echo "▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌ ▀▀▀▀█░█▀▀▀▀      ▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀█░▌     ▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌ ▐░▌      "
    echo "▐░▌       ▐░▌▐░▌       ▐░▌▐░▌▐░▌    ▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌▐░▌ ▐░▌▐░▌▐░▌       ▐░▌     ▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌          ▐░▌▐░▌       "
    echo "▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌     ▐░▌          ▐░▌          ▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▐░▐░▌ ▐░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░█▄▄▄▄▄▄▄▄▄      ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌░▌        "
    echo "▐░░░░░░░░░░▌ ▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌     ▐░▌          ▐░▌          ▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░▌          ▐░░▌         "
    echo "▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌     ▐░▌          ▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░▌   ▀   ▐░▌▐░█▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀█░▌     ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░▌░▌        "
    echo "▐░▌       ▐░▌▐░▌       ▐░▌▐░▌    ▐░▌▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌                         ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌          ▐░▌▐░▌       "
    echo "▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌ ▄▄▄▄█░█▄▄▄▄      ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌                ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌ ▐░▌      "
    echo "▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌               ▐░░░░░░░░░░░▌     ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌     "
    echo " ▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀         ▀  ▀                 ▀▀▀▀▀▀▀▀▀▀▀       ▀       ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀    ▀      "
}

# Function to check the OS and update the package list
check_os_and_update() {
    echo "Checking OS and updating package list..."
    sudo apt-get update -y
    echo "System updated."
}

# Function to install Apache
install_apache() {
    echo "Installing Apache..."
    sudo apt-get install apache2 -y
    sudo systemctl start apache2
    sudo systemctl enable apache2
    echo "Apache installed and running."
}

# Function to install MySQL and secure it
install_mysql() {
    echo "Installing MySQL..."
    sudo apt-get install mysql-server -y

    echo "Securing MySQL installation..."
    sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';"
    sudo mysql -e "DELETE FROM mysql.user WHERE User='';"
    sudo mysql -e "DROP DATABASE IF EXISTS test;"
    sudo mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"
    sudo mysql -e "FLUSH PRIVILEGES;"
    echo "MySQL installation secured."
}

# Function to install PHP
install_php() {
    echo "Installing PHP..."
    sudo apt-get install php libapache2-mod-php php-mysql -y
    echo "PHP installed."
}

# Function to install PhpMyAdmin
install_phpmyadmin() {
    echo "Installing PhpMyAdmin..."
    echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | sudo debconf-set-selections
    echo "phpmyadmin phpmyadmin/app-password-confirm password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
    echo "phpmyadmin phpmyadmin/mysql/admin-pass password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
    echo "phpmyadmin phpmyadmin/mysql/app-pass password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
    echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | sudo debconf-set-selections

    sudo apt-get install phpmyadmin -y
    sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
    echo "PhpMyAdmin installed and configured."
}

# Function to create a database for PhpMyAdmin
create_database() {
    echo "Creating a database for PhpMyAdmin..."
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE phpmyadmin;"
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'phpmyadmin'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
    echo "Database 'phpmyadmin' created."
}

# Function to install Git
install_git() {
    echo "Installing Git..."
    sudo apt-get install git -y
    echo "Git installed."
}

# Function to clone GitHub repository and configure Apache
clone_repo_and_configure_apache() {
    echo "Cloning GitHub repository and configuring Apache..."
    sudo rm -rf /var/www/html/*
    sudo git clone https://github.com/boniyeamincse/bonilampstackweb.git /var/www/html
    sudo chown -R www-data:www-data /var/www/html
    sudo chmod -R 755 /var/www/html

    sudo tee /etc/apache2/sites-available/000-default.conf > /dev/null <<EOT
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOT

    sudo systemctl restart apache2
    echo "GitHub repository cloned and Apache configured."
}

# Function to uninstall LAMP stack
uninstall_lamp() {
    echo "Uninstalling LAMP stack..."
    sudo apt-get remove --purge apache2 mysql-server php phpmyadmin -y
    sudo apt-get autoremove -y
    sudo apt-get autoclean -y
    sudo rm -rf /var/www/html/*
    echo "LAMP stack uninstalled."
}

# Prompt user for MySQL root password
read -sp "Enter MySQL root password: " MYSQL_ROOT_PASSWORD
echo

# Display banner
display_banner

# Main menu
while true; do
    echo "Automated Boni LAMP Stack Server Installer"
    echo "========================================"
    echo "1. Check OS and Updates"
    echo "2. Install Apache, MySQL, PHP, PhpMyAdmin, and Git"
    echo "3. Secure MySQL Installation and Create Database"
    echo "4. Clone GitHub Repository and Configure Apache"
    echo "5. Uninstall LAMP"
    echo "6. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1)
            check_os_and_update
            ;;
        2)
            check_os_and_update
            install_apache
            install_mysql
            install_php
            install_phpmyadmin
            install_git
            ;;
        3)
            install_mysql
            create_database
            ;;
        4)
            clone_repo_and_configure_apache
            ;;
        5)
            uninstall_lamp
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
