# start pcap collection at one of the nodes.
if [ -z "$1" ]
then 
    echo 'usage: please provide scenario string for pcap filename ("before" or "after")'
    exit 
fi 
SCENARIO=$1
HOSTNAME=`hostname`
PREFIX="cap_"${HOSTNAME}"_"${SCENARIO}

DATE=`date +%Y%m%d`
TIME=`date +%H%M%S`

PCAP_FN=${PREFIX}_${DATE}_${TIME}.pcap

CMD="sudo tcpdump -i enp175s0f1 -B 4096 -nnnne -s 200 -w ${PCAP_FN}"

echo "output pcap filename: ${PCAP_FN}"
echo "running command: "$CMD
# run the command
`$CMD`