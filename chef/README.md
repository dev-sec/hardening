# Example Chef Hardening

Demonstrates the use of the hardening cookbooks via Chef to increase the security of your server. It also captures the best practice for using multiple hardening modules.

## Modules

This kitchen installs the following on your server:

- [ntp](https://github.com/gmiranda23/ntp) (best-practice, but not required for hardening projects)
- [chef-os-hardening](https://github.com/TelekomLabs/chef-os-hardening)
- [chef-ssh-hardening](https://github.com/TelekomLabs/chef-ssh-hardening)

## Prerequisites

Install [Chef](http://www.getchef.com/chef/install/) on your workstation as well as [berkshelf](http://berkshelf.com/) and [knife-solo](http://matschaffer.github.io/knife-solo/)

```bash
# install berkshelf
gem install berkshelf

# installs knife-solo
gem install knife-solo
```

## Usage with `knife-solo`

The is kept as simple as possible. With just two commands you are able to harden your server in less than 5 minutes.

```bash
# download this kitchen
git clone https://github.com/TelekomLabs/example-chef-hardening.git
cd example-chef-hardening

# download cookbooks
berks vendor cookbooks

# update your ssh key in `data_bags/users/root.json'

# bootraps a fresh server with the cookbooks
knife solo bootstrap user@YOURIP nodes/default.json
```

Please read the article [How to harden a new server with Chef](http://lollyrock.com/articles/how-to-harden-a-new-server/) for a more detailed description.

## Usage with Vagrant

Get all required cookbooks locally

```bash
berks vendor cookbooks
```

Now fire up vagrant

```bash
vagrant up
```

That's it. Enjoy testing your box via:

```bash
vagrant ssh ubuntu-trusty
```

## License and Author

* Author:: Christoph Hartmann <chris@lollyrock.com>
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
