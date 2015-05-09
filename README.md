# DevOps Server Hardening

The [Hardening Framework](http://hardening.io/) combines DevOps with Security. It implements hardening for [Puppet](https://puppetlabs.com/), [Chef](https://www.chef.io/) and [Ansible](http://www.ansible.com).

One of the main goals for the Hardening Framework is the plug-in architecture. All modules are implemented as overlay modules and can be easily with the corresponding open source module. Therefore you can just drop in "hardening" for your staging and production environments and continue using your existing modules.
 
## Components

The framework consists of 6 components:

 * Operating System Hardening
 * SSH Hardening
 * Apache Hardening
 * Nginx Hardening
 * Mysql Hardening
 * Postgres Hardening

Currently, all components are implemented in Chef and Puppet. We implemented SSH Hardening in Ansible and work on OS Hardening. Examples for Ansible will follow as soon as possible.

## Layout

This repository contains examples and tools to harden your server. A subfolder for each DevOps tool exists and a readme guides you accordingly:

```bash
├── LICENSE
├── README.md
├── ansible
├── chef
└── puppet
```

## Contributors + Kudos

...

## License and Author

* Author:: Dominik Richter <dominik.richter@gmail.com>
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
