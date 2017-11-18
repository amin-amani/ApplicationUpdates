#!/bin/sh
ls Heater
if [ $? = 0 ]; then
echo "new updates avaliable!"
cp Heater/app .
cp Heater/updater.sh . 
chmod 777 app
chmod 777 updater.sh
sudo rm Heater -r
fi

./app&

sleep 10
git clone https://github.com/amin-amani/Heater.git
if [ $? = 0 ]; then
echo "update ok"
#cp Heater/app .
#chmod 777 app
fi

