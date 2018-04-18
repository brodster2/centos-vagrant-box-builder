# -*- mode: ruby -*-
# vim: set syntax=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = '1801.02'
  config.vm.network "private_network", ip: "192.168.70.21"
  config.vm.hostname = "centos-dev"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.ssh.insert_key = true

  # Run Ansible from the Vagrant Host

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/box.yml"
  end
end
