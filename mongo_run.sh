sudo apt-get update
sudo apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3-pip
pip install obspy
sudo apt-get install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo systemctl stop mongod
sudo apt-get remove mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org=4.4.8 mongodb-org-server=4.4.8 mongodb-org-shell=4.4.8 mongodb-org-mongos=4.4.8 mongodb-org-tools=4.4.8
sudo systemctl start mongod
pip install pymongo
