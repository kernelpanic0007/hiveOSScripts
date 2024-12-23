#exit out of screen
screen -S wart_miner -X quit
#download if necessary and run miner
worker='"$HOSTNAME"'
cd /home/user
wget -nc https://bzminer.com/downloads/bzminer_v21.5.5b1_linux.tar.gz
rm -r /home/user/bzminer_v21.5.5b1_linux/*
tar xzvf bzminer_v21.5.5b1_linux.tar.gz
/hive/sbin/amd-oc
screen -dmS wart_miner bash -c  "while true; do /home/user/bzminer_v21.5.5b1_linux/bzminer -a warthog -r $worker -w walletaddress -p nodeipaddressvar --nc 1 --nvidia 0 --amd 1 --cpu_threads 12 --cpu_threads_start_offset 0 --warthog_max_ram_gb 0 --warthog_verus_hr_target 0 2>&1 | tee /var/log/bzminer_hiveos.log; done"
