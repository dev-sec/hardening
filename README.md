# Example Chef Hardening

Demonstrates the use of hardening modules via Chef.

## Prerequisites

Install [Chef](http://www.getchef.com/chef/install/) on your workstation as well as [berkshelf](http://berkshelf.com/) and [knife-solo](http://matschaffer.github.io/knife-solo/)

```bash
# install berkshelf
gem install berkshelf

# installs knife-solo
gem install knife-solo
```

## Usage with `knife-solo`

The usage is as simple as possible. With one command you harden your server in less than 5 minutes.

```bash
# bootraps a fresh server with the cookbooks
knife solo bootstrap user@YOURIP nodes/default.json
```

## Modules

This kitchen comes with 2 modules

* [os_hardening](http://community.opscode.com/cookbooks/os-hardening)
* [ssh_hardening](http://community.opscode.com/cookbooks/ssh-hardening)

## Contributors + Kudos

...


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
