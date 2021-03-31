export TIME=1; 
for PORT in `seq 5105 5205`; 
  do  
    (iperf3 -u -b0 -P2 -c10.64.5.131 -p $PORT -t $TIME) 
  done
