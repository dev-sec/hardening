# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/ubuntu-12.04"

  # forward port 80 to 8080 on host machine
  config.vm.network "forwarded_port", guest: 80, host: 8082
  config.vm.network "private_network", type: "dhcp"

  # ensure chef is install in vm
  config.omnibus.chef_version = "12.5.1"

  # download all required cookbooks
  config.berkshelf.enabled = true

  # deployed chef roles
  config.vm.provision "chef_solo" do |chef|
    chef.roles_path = "roles"
    chef.add_role("wordpress")
  end
end
