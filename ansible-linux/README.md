# Example Ansible Hardening

Demonstrates the use of the hardening roles via Ansible to increase the security of your server. It also captures the best practice for using multiple hardening modules.

## Modules

This playbook installs the following on your server:

- [ansible-ssh-hardening](https://github.com/hardening-io/ansible-ssh-hardening)

## Prerequisites

Install [Ansible](http://docs.ansible.com/intro_installation.html) on your workstation.

## Usage 

The is kept as simple as possible. With just two commands you are able to harden your server in less than 5 minutes.

```bash
# download this repository
git clone https://github.com/hardening-io/hardening

# change to the ansible-directory
cd hardening/ansible/provisioning

# add your to be hardened host to the inventory file

# run the playbook
ansible-playbook playbook.yml -i inventory
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


