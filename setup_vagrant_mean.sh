# setup vagrant
vagrant init precise32 http://files.vagrantup.com/precise32.box
vagrant up
vagrant ssh

#install node
sudo apt-get update
sudo apt-get install python-software-properties  
sudo add-apt-repository ppa:chris-lea/node.js  
sudo apt-get update  
sudo apt-get install nodejs

#install yeoman
sudo npm install -g yo grunt-cli bower 

#install generator
sudo npm install generator-generator -g
sudo npm install generator-mean -g

#create project
mkdir myProject
cd myProject

yo mean

#launch server
grunt server