# Example Puppet Hardening

Demonstrates the use of hardening modules via puppet. Use either Vagrant or Docker, whichever you prefer.

## Modules

* [os_hardening](https://forge.puppetlabs.com/hardening/os_hardening)
* [ssh_hardening](https://forge.puppetlabs.com/hardening/ssh_hardening)

## Vagrant

All necessary modules will be automatically fetched by r10k. 

To get your box up and running:

    vagrant up

That's it. Enjoy testing your box via:

    vagrant ssh


## Docker

You will require `librarian-puppet` for module resolution:

    gem install librarian-puppet

Load modules:

    librarian-puppet install

Once done, get your box up:

    docker build -t example-puppet-hardening .

That's it. Enjoy testing your box via:

    docker run example-puppet-hardening

