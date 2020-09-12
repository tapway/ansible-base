# ansible-base

## Table of Contents
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
## Getting Started
Ansible playbook with libs, tools and shell tweaks.

### Prerequisites
- Ubuntu/Debian Linux sever.
### Installation
- `sudo apt install make`
- `git clone https://github.com/tapway/ansible-base.git`
- `cd ansible-base`
- `make install`
## Usage
- `make run` for play all tasks at `localhost`

Follow official `ansible` docs if you want more [precise][at] command or [different][ai] target host.

[at]: https://docs.ansible.com/ansible/latest/user_guide/playbooks_tags.html
[ai]: https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html
