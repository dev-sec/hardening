# Example Puppet Hardening

Demonstrates the use of hardening modules via puppet. Use either Vagrant or Docker, whichever you prefer.

## Modules

* [os_hardening](https://forge.puppetlabs.com/hardening/os_hardening)
* [ssh_hardening](https://forge.puppetlabs.com/hardening/ssh_hardening)

## Vagrant

All necessary modules will be automatically fetched by r10k.

To get your box up and running:

    vagrant up ubuntu-trusty

That's it. Enjoy testing your box via:

    vagrant ssh ubuntu-trusty


## Docker

You will require `librarian-puppet` for module resolution:

    gem install librarian-puppet

Load modules:

    librarian-puppet install

Once done, get your box up:

    docker build -t example-puppet-hardening .

That's it. Enjoy testing your box via:

    docker run example-puppet-hardening


## Contributors + Kudos

...


## License and Author

* Author:: Dominik Richter <dominik.richter@gmail.com>
* Author:: Deutsche Telekom AG

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

