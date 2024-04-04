#exit out of screen
screen -S wart_miner -X quit
#download if necessary and run miner
worker='"$HOSTNAME"'
cd /home/user
wget -nc https://bzminer.com/downloads/bzminer_v21.0.3b7_linux.tar.gz
rm -r /home/user/bzminer_v21.0.3b7_linux/*
tar xzvf bzminer_v21.0.3b7_linux.tar.gz
/hive/sbin/amd-oc
screen -dmS wart_miner bash -c  "while true; do /home/user/bzminer_v21.0.3b7_linux/bzminer -a warthog -r $worker -w walletaddress -p stratum+tcp://pool.us.woolypooly.com:3140 --nc 1 --nvidia 0 --amd 1 --warthog_cpu_threads 12 --warthog_max_ram_gb 4 2>&1 | tee /var/log/bzminer_hiveos.log; done"
