# Chef Hardening for Linux Operating Systems

This is a [test-kitchen](http://kitchen.ci/) project that is using Chef cookbooks to harden an Ubuntu 16.04 and CentOS 7 system via:

 * [os-hardening](https://github.com/dev-sec/chef-os-hardening)
 * [ssh-hardening](https://github.com/dev-sec/chef-ssh-hardening)

Once the servers are hardened, we verify the their compliance status via [InSpec](http://inspec.io/)

 * [linux-baseline](https://github.com/dev-sec/linux-baseline/)
 * [ssh-baseline](https://github.com/dev-sec/ssh-baseline/)

## Precondition

You need to have ChefDK installed to be able to execute `kitchen`

 * [ChefDK](https://downloads.chef.io/chefdk)

## Get Started

```bash
# Show list of available operating systems
$ kitchen list
Instance           Driver   Provisioner  Verifier  Transport  Last Action    Last Error
linux-ubuntu-1604  Vagrant  ChefSolo     Inspec    Ssh        <Not Created>  <None>
linux-centos-72    Vagrant  ChefSolo     Inspec    Ssh        <Not Created>  <None>

# Harden the system with Chef
$ kitchen converge linux-ubuntu-1604
...

# Verify the system with InSpec
$ kitchen converge linux-ubuntu-1604
...

```
