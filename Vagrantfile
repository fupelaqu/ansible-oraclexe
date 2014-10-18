# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "vagrant-oraclexe.vm"
  
  config.vm.provider :virtualbox do |vb|
    vb.name = "vagrant-oraclexe"
    vb.cpus = 2
    vb.memory = 2*1024
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end  
  
  config.vm.network :private_network, ip: "192.168.56.70"

  config.vm.provision "ansible" do |ansible|
    #ansible.inventory_path = "vagrant-inventory.ini"
    ansible.playbook = "vagrant-playbook.yml"
    #ansible.extra_vars = { user: "vagrant" }
    #ansible.sudo = true
    ansible.limit = 'all'
  end

end
