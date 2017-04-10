# Chef Hardening for Windows Operating Systems

This is a [test-kitchen](http://kitchen.ci/) project that is using Chef cookbooks to harden an Windows 2012 R2 and Windows 2016 system via:

 * [windows-hardening](https://github.com/dev-sec/chef-windows-hardening)

Once the servers are hardened, we verify the their compliance status via [InSpec](http://inspec.io/)

 * [windows-baseline](https://github.com/dev-sec/windows-baseline/)

## Precondition

You need to have ChefDK installed to be able to execute `kitchen`

 * [ChefDK](https://downloads.chef.io/chefdk)

## Get Started

```bash
# Show list of available operating systems
$ kitchen list
Instance                Driver   Provisioner  Verifier  Transport  Last Action    Last Error
windows-windows-2012R2  Vagrant  ChefSolo     Inspec    Winrm      <Not Created>  <None>
windows-windows-2016    Vagrant  ChefSolo     Inspec    Winrm      <Not Created>  <None>

# Harden the system with Chef
$ kitchen converge windows-windows-2012R2
...

# Verify the system with InSpec
$ kitchen converge windows-windows-2012R2
...

```
