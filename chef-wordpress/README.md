# wordpress hardening kitchen

Demonstrates the use of the hardening cookbooks via Chef to increase the security of your server. It also captures the best practice for using multiple hardening modules.

This example installs the following hardening modules:

- [chef-os-hardening](https://github.com/dev-sec/chef-os-hardening)
- [chef-ssh-hardening](https://github.com/dev-sec/chef-ssh-hardening)
- [chef-mysql-hardening](https://github.com/dev-sec/chef-mysql-hardening)
- [chef-nginx-hardening](https://github.com/dev-sec/chef-nginx-hardening)

## Use with vagrant

### Prerequisites

 - Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 - Install [Vagrant](https://www.vagrantup.com/downloads.html)
 - Install [ChefDK](https://downloads.getchef.com/chef-dk)
 - Install Vagrant Berkshelf via `vagrant plugin install vagrant-berkshelf`
 - Install Vagrant Omnibus via `vagrant plugin install vagrant-omnibus`

### Start

```bash
vagrant up
open http://localhost:8082
```

## Use with knife solo

### Prerequisites

 - Install [ChefDK](https://downloads.getchef.com/chef-dk)
 - Install knife-solo via `gem install knife-solo`

## License and Author

* Author:: Christoph Hartmann <chris@lollyrock.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
