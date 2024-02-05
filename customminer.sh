/hive/sbin/amd-oc
screen -dmS wart_miner bash -c  "while true; do /home/user/janusminer_hiveos/wart-miner -a walletaddress -h nodeipaddressvar -p 3000 --threads=8 2>&1 | tee /var/log/janusminer_hiveos.log; done"

