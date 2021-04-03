export TIME=$1; 
export REPEAT=$2;
export SLEEP=$3;
for I in `seq 1 $REPEAT`; 
do
    for PORT in `seq 5201 5205`; 
    do  
        iperf3 -u -b 0 -P 2 -c 10.64.5.131 -p $PORT -t $TIME &
    done
    sleep $SLEEP
done
