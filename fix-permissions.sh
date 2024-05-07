#!/bin/bash

DIRBASE=$(pwd)
GRUPO=desarrolladores

whatis setfacl 2>/dev/null ||  sudo apt update && sudo apt -y install acl

sudo chmod 770 $DIRBASE -R
sudo mkdir -p $DIRBASE/mysql_dump
sudo chmod 775 $DIRBASE/mysql_dump -R
sudo chown root.$GRUPO $DIRBASE -R
sudo chmod g+s $DIRBASE -R

sudo setfacl -m "default:group::rwx"  $DIRBASE
sudo find -type d -exec setfacl -m "default:group::rwx" {} \;
