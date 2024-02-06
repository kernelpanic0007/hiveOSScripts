cd /home/user
wget -nc https://github.com/CoinFuMasterShifu/janusminer/releases/download/0.1.1/janusminer_hiveos-0.1.1.tgz
tar xzvf janusminer_hiveos-0.1.1.tgz
/hive/sbin/amd-oc
screen -dmS wart_miner bash -c  "while true; do /home/user/janusminer_hiveos/wart-miner -a walletaddress -h nodeipaddressvar -p nodeipport --threads=8 2>&1 | tee /var/log/janusminer_hiveos.log; done"
