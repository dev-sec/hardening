# DevOps Server Hardening

The [Hardening Framework](http://dev-sec.io/) combines DevOps with Security. It implements hardening for [Puppet](https://puppetlabs.com/), [Chef](https://www.chef.io/) and [Ansible](http://www.ansible.com).

One of the main goals for the Hardening Framework it to provide security as a plug-in mechanism. All modules are implemented as overlay modules and work in conjunction with the corresponding open source module like apache or nginx. This enables you to drop in `hardening` for your staging and production environments and reuse existing developments.

## Components

The framework consists of multiple hardening components:

 * [Linux System Baseline](https://github.com/dev-sec/linux-baseline)
 * [SSH Baseline](https://github.com/dev-sec/ssh-baseline)
 * [Windows System Baseline](https://github.com/dev-sec/windows-baseline)
 * [Apache Baseline](https://github.com/dev-sec/apache-baseline)
 * [Nginx Baseline](https://github.com/dev-sec/nginx-baseline)
 * [Mysql Baseline](https://github.com/dev-sec/mysql-baseline)
 * [Postgres Baseline](https://github.com/dev-sec/postgres-baseline)
 * [PHP Baseline](https://github.com/dev-sec/php-baseline)
 * [SSL/TLS Baseline](https://github.com/dev-sec/ssl-baseline)

Most components are implemented in Ansible, Chef and Puppet.

## Layout

This repository contains examples and tools to harden your server. A subfolder for each DevOps tool exists and a readme guides you accordingly:

```bash
├── LICENSE
├── README.md
├── ansible
├── chef-linux
└── puppet
```

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
