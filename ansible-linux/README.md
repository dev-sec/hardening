# Example Ansible Hardening

Demonstrates the use of the hardening roles via Ansible to increase the security of your server. It also captures the best practice for using multiple hardening modules.

Once the servers are hardened, we verify the their compliance status via [InSpec](http://inspec.io/)

 * [linux-baseline](https://github.com/dev-sec/linux-baseline/)
 * [ssh-baseline](https://github.com/dev-sec/ssh-baseline/)

## Roles

This playbook installs the following roles on your server:

- [ansible-ssh-hardening](https://github.com/dev-sec/ansible-ssh-hardening)
- [ansible-os-hardening](https://github.com/dev-sec/ansible-os-hardening)

## Prerequisites

Install [Ansible](https://docs.ansible.com/ansible/intro_installation.html) on your workstation.

## Usage

Simply install the roles with ansible-galaxy and run the following playbooks against your linux hosts.

```bash
# download the roles with ansible-galaxy
ansible-galaxy install dev-sec.os-hardening
ansible-galaxy install dev-sec.ssh-hardening
```

Create a playbook:

```
---
- hosts: all
  roles:
    - dev-sec.os-hardening
    - dev-sec.ssh-hardening
```

Run the play:

```
ansible-playbook playbook.yml
```

## Usage with Test-Kitchen

First install test-kitchen:

```
gem install bundler
bundle install
```

Start the virtual machine and run the playbooks:
```
bundle exec kitchen converge
```

Verify with inspec tests

```
bundle exec kitchen verify
```


## Usage with Vagrant

Just fire up vagrant:

```bash
vagrant up
```

That's it. Enjoy testing your box via:

```bash
vagrant ssh ubuntu-trusty
```


