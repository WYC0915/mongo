sudo apt install -y build-essential libssl-dev libffi-dev python3-dev python3-pip
pip install obspy
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
service mongodb stop
sudo apt-get remove mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl enable --now mongod
pip install pymongo
