export TIME=$1;
for PORT in `seq 2001 2005`;
do
    iperf3 -b 500K -c 10.64.11.3 -p $PORT -t $TIME &
done
