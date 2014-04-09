PostGIS 2.0 Vagrantfile
===
Installs PostgreSQL 9.2 with PostGIS 2.0 on an Ubuntu 12.04 virtual machine.

Quick setup:
 * Install [Vagrant][] and [VirtualBox][]
 * `git clone https://github.com/coyotebush/postgis-2.0-vagrant.git && cd postgis-2.0-vagrant`
 * `vagrant up` (will take some time and bandwidth)
 * `vagrant ssh` to connect to the VM
 * Create a database using `createdb foo` and connect using `psql foo`
 * The contents of this directory will be available in `/vagrant/` on the VM
 * Alternately, connect from outside the VM on port 5532 as user `vagrant` with password `vagrant`

[Vagrant]: http://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
