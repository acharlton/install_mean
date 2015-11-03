echo "Update & upgrade"
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
echo "Install Nodejs"


wget http://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz
sudo tar -C /usr/local --strip-components 1 -xzf node-v4.2.1-linux-x64.tar.gz

#apt-get install curl
#curl -sL https://deb.nodesource.com/setup | sudo bash -
#apt-get install -y nodejs
sudo apt-get -y install build-essential


echo"Install Mongo DB"
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
apt-get update
apt-get install mongodb-org

echo "Install git"
apt-get update
apt-get install git

echo "Install Grunt"
apt-get update && sudo apt-get -y dist-upgrade
npm install -g grunt grunt-cli grunt-contrib-clean grunt-replace grunt-contrib-concat grunt-contrib-watch grunt-contrib-jasmine grunt-contrib-connect grunt-saucelabs grunt-gitinfo

git clone https://github.com/meanjs/mean.git meanjs
cd meanjs
npm install

echo "install bower"
npm install bower -g

npm install -g yo


echo "Set generator to run without sudo"
echo prefix = ~/.node >> ~/.npmrc
echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
. ~/.bashrc

# need sudo rights
sudo npm install -g generator-meanjs


