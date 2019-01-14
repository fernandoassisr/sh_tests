# /bin/bash
pid=$(pidof systemd)
var=0
while true
do 
	echo '-----------------------'>>log.data
    echo "Usage at :"$(date) >>log.data
    cat /proc/$pid/status  >> log.data
    ((var++))    
	echo '-------------Execution '$var' ----------'>>log.data
    sleep 5
done