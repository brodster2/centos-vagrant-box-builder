# Vagrant box provisioning scripts

## Requirements

* Vagrant
* Ansible [(mac install instructions)](http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-on-mac-osx)

## How to use:

1. Run `vagrant up`. 

_The Vagrantfile is configured to run the Ansible playbook automatically._

2. Run `vagrant package --output dev-box-0.0.2.box` (or whatever version the git repo is on) from the project root directory.

_This will output a file called `dev-box-0.0.2.box` which can then be uploaded to the Vagrant Cloud._

## Workflow

Before a box is built/"deployed" from this codebase, the code should be merged to master, a release created and checked out before running `vagrant package`.

## Local Testing

To test a packaged box locally with another project,

run `vagrant box add --name <boxName>`.

This will make the box accesible in any directory on your machine.

You can then alter an existing Vagrantfile to use the new test box

```ruby
Vagrant.configure("2") do |config|
       config.vm.box = "<boxName>"
       ...
```

## More information

[Ansible Documentation](http://docs.ansible.com/)

[Vagrant Ansible provisioning](https://www.vagrantup.com/docs/provisioning/ansible.html)

[Vagrant Package command](https://www.vagrantup.com/docs/cli/package.html)
 
