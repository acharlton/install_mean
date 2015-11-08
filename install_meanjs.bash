echo "Update & upgrade"
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get -y install vim

echo "install build essential"
sudo apt-get -y install build-essential

echo "Install Node"
wget -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Install Mongo DB"
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get -y install mongodb-org

echo "Install git"
sudo apt-get update
sudo apt-get -y install git

echo "Install Grunt"
sudo apt-get update
npm install -g grunt grunt-cli grunt-contrib-clean grunt-replace grunt-contrib-concat grunt-contrib-watch grunt-contrib-jasmine grunt-contrib-connect grunt-saucelabs grunt-gitinfo

echo "Install meanjs"
git clone https://github.com/meanjs/mean.git meanjs
cd meanjs
npm install

# need sudo rights
echo "install bower"
npm install -g bower yo generator-meanjs

#cd ..
#mkdir mean-app
#cd mean-app
#yo meanjs

echo "Set generator to run without sudo"
echo prefix = ~/.node >> ~/.npmrc
echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
echo source ~/.bashrc



