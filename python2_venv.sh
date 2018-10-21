#!/bin/bash
#######################################################
# The closer you see , the less you observe ---- Anonymous
#######################################################
#
#  Run this script and install python 2 as virtual env without affecting your local env
#

sudo apt-get update


#Checking python 
read -p "Is python already installed ?(Y/N) : " option
if [ "$option" = "Y"  ] || [ "$option" = "y"  ];
then
	echo "Taking path of already installed python"
else
	echo "*****Installing py 2********"
	sudo apt install python2.7
fi

PY_PATH2=$( which python )
cd $HOME
echo "*********Setting env in HOME dir****************"
sudo virtualenv -p $PY_PATH2 Project_py2

echo "----------Venv successfully installed------------------"
echo "Type : source Project_py2/bin/activate"


