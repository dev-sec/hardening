# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Ubuntu
  config.vm.define "ubuntu-trusty" do |c|
    c.vm.box = "trusty64"
    c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

    c.vm.provision :shell, inline: "apt-get update"
    c.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
      chef.roles_path = "roles"
      chef.data_bags_path = "data_bags"
      chef.add_role "hardening"
    end
  end

end
