#! /bin/sh
LIBSSL="libssl1.0.0_1.0.2n-1ubuntu5.11_amd64.deb"
if [ -f $LIBSSL ];then 
	echo "-- install libssl1 --"
	sudo dpkg -i $LIBSSL
	echo "-- get unity repo --"
	sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list' 
	echo "-- save key --"
	wget -qO - https://hub.unity3d.com/linux/keys/public | sudo tee /etc/apt/trusted.gpg.d/unityhub.asc 
	echo "-- install unityhub --"
	sudo apt update 
	sudo apt install unityhub
else 
	echo $LIBSSL not exist
fi; 
# for remove
# sudo apt remove unityhub
