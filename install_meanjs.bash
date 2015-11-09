# this works on ubunut 14.04

# create a directory for the vagrant box then run this in it....
# vagrant init ubuntu/trusty64; vagrant up --provider virtualbox
# once its downloaded vagrant ssh and add the follwoing code......

echo "update"
sudo apt-get update
echo "Install node express express-generatorangular postgres postgis pgadmin3"
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g express-generator@4
npm install express
sudo npm install -g express-generator
npm install angular@1.4.7
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install postgis
sudo apt-get install pgadmin3


# create project folder
mkdir myproject
cd myproject
express myapp
cd myapp
npm install
npm install --save sequelize
npm install --save pg pg-hstore


# log into Postgres
sudo -u postgres psql postgres

#echo "Install Mongo DB"
#apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
#echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
#sudo apt-get update
#sudo apt-get -y install mongodb-org

echo "Install git"
sudo apt-get update
sudo apt-get -y install git

#echo "Install Grunt"
#sudo apt-get update
#npm install -g grunt grunt-cli grunt-contrib-clean grunt-replace grunt-contrib-concat grunt-contrib-watch grunt-contrib-jasmine grunt-contrib-connect grunt-saucelabs grunt-gitinfo

#echo "Install meanjs"
#git clone https://github.com/meanjs/mean.git meanjs
#cd meanjs
#npm install

# need sudo rights
#echo "install bower"
#npm install -g bower yo generator-meanjs

#cd ..
#mkdir mean-app
#cd mean-app
#yo meanjs

#echo "Set generator to run without sudo"
#echo prefix = ~/.node >> ~/.npmrc
#echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
#echo source ~/.bashrc



