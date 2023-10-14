git clone https://github.com/akhilnarang/scripts
cd scripts
bash setup/android_build_env.sh

echo "creating Swap of 20 GB "
sudo swapoff /swapfile
sudo fallocate -l 20G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab


