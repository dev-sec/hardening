# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Ubuntu
  config.vm.define "ubuntu-trusty" do |c|
    c.vm.box = "trusty64"
    c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

    c.vm.provision :shell, :path => "bootstrap.sh"
    c.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
    end
  end

end
