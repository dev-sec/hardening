# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<BOOTSTRAP
apt-get update -qq
[ -x /usr/bin/git ] || apt-get install -y -q git
[ -x /usr/bin/make ] || apt-get install -y -q make
gem list r10k -i 1>/dev/null || gem install --quiet --no-rdoc --no-ri r10k 1>/dev/null
cd /vagrant && r10k -v info puppetfile install
BOOTSTRAP

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Ubuntu
  config.vm.define "ubuntu-trusty" do |c|
    c.vm.box = "trusty64"
    c.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

    c.vm.provision :shell, inline: $script
    c.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
    end
  end

end
