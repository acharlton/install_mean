Vagrant.configure("2") do |o|
	o.vm.box = "hashicorp/precise32"
	o.vm.box_url = "http://files.vagrantup.com/precise32.box"
	o.vm.synched_folder "./app","/var/www/", create:true
	o.vm.network :private_network, ip: "192.168.55.55"
	o.vm.provider "virtualbox" do |vb|
		vb.gui = true
		vb.memory = "2048"
	end
	o.vm.provision "shell", inline: <<-shell	
		sudo apt-get -y update
		sudo apt-get install -y 
	#o.vm.provision :shell, :path => "setup.sh"
end
