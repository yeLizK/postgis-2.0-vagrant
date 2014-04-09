PostGIS 2.0 Vagrantfile
===
Installs PostgreSQL 9.2 with PostGIS 2.0 on an Ubuntu 12.04 VM.

Quick setup:
 * Install [Vagrant][] and [VirtualBox][]
 * `git clone https://github.com/coyotebush/postgis-2.0-vagrant.git && cd postgis-2.0-vagrant`
 * `vagrant up` (will take some minutes)
 * `vagrant ssh` to connect to the VM
 * Create a database using `createdb foo` and connect using `psql foo`
 * The contents of this directory will be available in `/vagrant/` on the VM

[Vagrant]: http://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
