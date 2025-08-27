#!/bin/bash

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

## Colors
yellow="\e[33m"
green="\e[32m"
white="\e[97m"
beige="\e[93m"
red="\e[91m"
reset="\e[0m"

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

sudo apt update
sudo apt upgrade -y

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

show_notice(){
clear
echo ""
echo -e "$yellow===================================================================================================$reset"
echo -e "$yellow=                                                                                                 $yellow=$reset"
echo -e "$yellow=                     $white██████╗  █████╗ ███╗   ██╗██╗  ██╗ ██████╗ ███╗   ██╗ █████╗ ██████╗ $yellow=$reset"
echo -e "$yellow=                     $white██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██╔════╝ ████╗  ██║██╔══██╗██╔══██╗$yellow=$reset"
echo -e "$yellow=                     $white██████╔╝███████║██╔██╗ ██║█████╔╝ ██║  ███╗██╔██╗ ██║███████║██████╔╝$yellow=$reset"
echo -e "$yellow=                     $white██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ██║   ██║██║╚██╗██║██╔══██║██╔══██╗$yellow=$reset"
echo -e "$yellow=                     $white██║  ██║██║  ██║██║ ╚████║██║  ██╗╚██████╔╝██║ ╚████║██║  ██║██║  ██║$yellow=$reset"
echo -e "$yellow=                     $white╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝$yellow=$reset"
echo -e "$yellow=                                                                                                 $yellow=$reset"
echo -e "$yellow===================================================================================================$reset"
echo ""
echo ""
}

show_updated(){
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=    $white██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗       ██████╗  ██████╗ ███╗   ██╗███████╗$yellow=$reset"
    echo -e "$yellow=    $white██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗      ██╔══██╗██╔═══██╗████╗  ██║██╔════╝$yellow=$reset"
    echo -e "$yellow=    $white██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██║  ██║█████╗██║  ██║██║   ██║██╔██╗ ██║█████╗  $yellow=$reset"
    echo -e "$yellow=    $white██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██║  ██║╚════╝██║  ██║██║   ██║██║╚██╗██║██╔══╝  $yellow=$reset"
    echo -e "$yellow=    $white╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██████╔╝      ██████╔╝╚██████╔╝██║ ╚████║███████╗$yellow=$reset"
    echo -e "$yellow=    $white ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═════╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝$yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

show_starting(){
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=                  $white███████╗████████╗ █████╗ ██████╗ ████████╗██╗███╗   ██╗ ██████╗                      $yellow=$reset"
    echo -e "$yellow=                  $white██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║████╗  ██║██╔════╝                      $yellow=$reset"
    echo -e "$yellow=                  $white███████╗   ██║   ███████║██████╔╝   ██║   ██║██╔██╗ ██║██║  ███╗                     $yellow=$reset"
    echo -e "$yellow=                  $white╚════██║   ██║   ██╔══██║██╔══██╗   ██║   ██║██║╚██╗██║██║   ██║                     $yellow=$reset"
    echo -e "$yellow=                  $white███████║   ██║   ██║  ██║██║  ██║   ██║   ██║██║ ╚████║╚██████╔╝                     $yellow=$reset"
    echo -e "$yellow=                  $white╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝                      $yellow=$reset"
    echo -e "$yellow=                                              v. 1.0.0                                           $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

show_verifying(){
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=       $white██╗   ██╗███████╗██████╗ ██╗███████╗██╗   ██╗██╗███╗   ██╗ ██████╗                           $yellow=$reset"
    echo -e "$yellow=       $white██║   ██║██╔════╝██╔══██╗██║██╔════╝╚██╗ ██╔╝██║████╗  ██║██╔════╝                           $yellow=$reset"
    echo -e "$yellow=       $white██║   ██║█████╗  ██████╔╝██║█████╗   ╚████╔╝ ██║██╔██╗ ██║██║  ███╗                          $yellow=$reset"
    echo -e "$yellow=       $white╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝    ╚██╔╝  ██║██║╚██╗██║██║   ██║                          $yellow=$reset"
    echo -e "$yellow=       $white ╚████╔╝ ███████╗██║  ██║██║██║        ██║   ██║██║ ╚████║╚██████╔╝                          $yellow=$reset"
    echo -e "$yellow=       $white  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝                           $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

desc_ver(){
echo -e "                            This script recommends using$yellow Ubuntu 20.04$white or$yellow Debian 11$white.$reset"
echo ""
} 

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

clear
show_verifying
echo "Please wait while we verify system information."
sleep 1

# Check if using recommended OS
if ! grep -q 'PRETTY_NAME="Ubuntu 20.04' /etc/os-release && ! grep -q 'PRETTY_NAME="Debian GNU/Linux 11' /etc/os-release; then
    show_notice
    desc_ver
    sleep 5
    clear
    show_verifying
fi

# Check if user is root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script needs to be executed as root. Running sudo su..."
    sudo su
fi

# Check if user is in /root/ directory
if [ "$PWD" != "/root" ]; then
    echo "Changing to /root/ directory"
    cd /root || exit
fi

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

show_starting 

## Doing upgrade
sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/14 - [ OK ] - System Upgrade"
else
    echo "1/14 - [ FAIL ] - System Upgrade"
fi

echo ""

## Installing Sudo
apt install sudo -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/14 - [ OK ] - Installing/Checking sudo"
else
    echo "2/14 - [ FAIL ] - Installing/Checking sudo"
fi

echo ""

## Installing apt-utils
sudo apt-get install -y apt-utils > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "3/14 - [ OK ] - Installing/Checking apt-utils"
else
    echo "3/14 - [ FAIL ] - Installing/Checking apt-utils"
fi

echo ""

## Installing dialog
sudo apt-get install -y dialog > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "4/14 - [ OK ] - Installing/Checking dialog"
else
    echo "4/14 - [ FAIL ] - Installing/Checking dialog"
fi

echo ""

## Installing jq
sudo apt-get install -y jq > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "5/14 - [ OK ] - Installing/Checking jq 1/2"
else
    echo "5/14 - [ FAIL ] - Installing/Checking jq 1/2"
fi

echo ""

## Installing jq
sudo apt install jq -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "6/14 - [ OK ] - Installing/Checking jq 2/2"
else
    echo "6/14 - [ FAIL ] - Installing/Checking jq 2/2"
fi

echo ""

## Installing apache2-utils
sudo apt install apache2-utils -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "7/14 - [ OK ] - Installing/Checking apache2-utils 1/2"
else
    echo "7/14 - [ FAIL ] - Installing/Checking apache2-utils 1/2"
fi

echo ""

## Installing apache2-utils
apt install apache2-utils -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "8/14 - [ OK ] - Installing/Checking apache2-utils 2/2"
else
    echo "8/14 - [ FAIL ] - Installing/Checking apache2-utils 2/2"
fi

echo ""

## Installing git
apt install git -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "9/14 - [ OK ] - Installing/Checking Git"
else
    echo "9/14 - [ FAIL ] - Installing/Checking Git"
fi

echo ""

## Installing python3
apt install python3 -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "10/14 - [ OK ] - Installing/Checking python3"
else
    echo "10/14 - [ FAIL ] - Installing/Checking python3"
fi

echo ""

## Doing update
sudo apt update > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "11/14 - [ OK ] - System Update"
else
    echo "11/14 - [ FAIL ] - System Update"
fi

echo ""

## Doing upgrade
sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "12/14 - [ OK ] - System Upgrade"
else
    echo "12/14 - [ FAIL ] - System Upgrade"
fi

echo ""

## Installing neofetch
apt install neofetch -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "13/14 - [ OK ] - Installing/Checking neofetch"
else
    echo "13/14 - [ FAIL ] - Installing/Checking neofetch"
fi

echo ""

# Check if ServerInstaller file already exists
if [ -e "ServerInstaller.sh" ]; then
    echo ""
    rm ServerInstaller.sh
fi

# Download the main script
curl -sSL https://raw.githubusercontent.com/rankgnar/server-installer/master/ServerInstaller.sh -o ServerInstaller.sh
if [ $? -eq 0 ]; then
    echo "14/14 - [ OK ] - Downloading main script"
    # Execute the downloaded script
    chmod +x ServerInstaller.sh
    ./ServerInstaller.sh
else
    echo "14/14 - [ FAIL ] - Downloading main script"
    echo "Ending setup - please check your internet connection"
    sleep 5
fi

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################
