# Deploy Docker-images with Ansible

## Common

### Hexlet tests and linter status

[![Actions Status](https://github.com/gelugu/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/gelugu/devops-for-programmers-project-76/actions)

## Info

### Prepare environment

1. Create file `.vault.pass` and write password inside
2. Run `make install` to install requirements

### Run playbooks

* `make setup-server` - install requirements tools and start app
* `make setup-ssl` - setup nginx with revers-proxy (ssl support and redirect http -> https)
* `make setup-monitoring` - start and setup datadog agent
* `make deploy` - make all deploy steps

### Work with playbook

* `make decrypt` - decrypt vault files
* `make encrypt` - encrypt vault files

[App link](https://hexlet.gelugu.com)
