Dockerfile for cgminer compiled with --enable-icarus option 

Usage:
     docker run -it --name cgminer  --privileged -v /dev/bus/usb:/dev/bus/usb  guennobzh/cgminer:latest /root/cgminer/cgminer --userpass userID.workerID:any-password --url stratum+tcp://stratum.slushpool.com:3333
     
You can modify the Dockerfile to compile for support another hardware.
Just replace --enable-icarus in Dockerfile by the appropriate flag find here https://github.com/ckolivas/cgminer
