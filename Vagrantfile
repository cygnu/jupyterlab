Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end
  config.vm.network "private_network", ip: "192.168.55.100"
  config.vm.provision :docker, run: "always"
  config.vm.provision :docker_compose
end
