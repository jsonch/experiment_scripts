export TIME=$1; 
for PORT in `seq 5201 5205`; 
do  
    iperf3 -u -b 0 -P 2 -c 10.64.5.131 -p $PORT -t $TIME &
done
