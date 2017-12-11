 # -*- mode: ruby -*-
# vi: set ft=ruby :
# See README.md for details

#VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(2) do |config|
  
  config.hostmanager.enabled = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.define "puppet"  do |puppet|
    # PuppetMaster on CentOS 7 
    puppet.vm.synced_folder '.', '/vagrant', disabled: true
    puppet.vm.box = "centos/7"
	puppet.vm.hostname = "puppet.example.com"
	puppet.vm.network "private_network", ip: "172.31.0.200"
	puppet.hostmanager.aliases = %w(puppet)
	puppet.vm.provider "virtualbox" do |vb|
	  vb.memory = 5048
	end
  end 	

  config.vm.define "agent2"  do |agent2|
	  # Puppet agent on Ubuntu 
    agent2.vm.synced_folder '.', '/vagrant', disabled: true
    agent2.vm.box = "ubuntu/trusty64"
	agent2.vm.hostname = "agent2.example.com"
	agent2.vm.network "private_network", ip: "172.31.0.202"
	agent2.hostmanager.aliases = %w(agent2)
	agent2.vm.provider "virtualbox" do |vb|
	  vb.memory = 1024
	end
  end 
  
  config.vm.define "agent1"  do |agent1|
	  # Puppet agent on CentOS 7
    agent1.vm.synced_folder '.', '/vagrant', disabled: true
    agent1.vm.box = "centos/7"
	agent1.vm.hostname = "agent1.example.com"
	agent1.vm.network "private_network", ip: "172.31.0.201"
	agent1.hostmanager.aliases = %w(agent1)
	agent1.vm.provider "virtualbox" do |vb|
	  vb.memory = 1024
	end
   end
  
end 

