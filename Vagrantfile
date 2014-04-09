# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "hashicorp/precise32"

  config.vm.provision "shell", inline: <<SCRIPT
# Add repositories and signing keys
echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" \
 > /etc/apt/sources.list.d/postgresql.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

# Update sources
apt-get update

# Configure in advance
debconf-set-selections <<SELECTIONS
postgresql-common postgresql-common/obsolete-major error
postgresql-9.2-postgis-2.0-scripts postgis/pg_9.2_postgis_2.0_deprecated note
SELECTIONS

# Install things
apt-get install -y postgresql-9.2-postgis-2.0

# Add a PostgreSQL superuser
su - postgres -c "createuser -ds vagrant"
SCRIPT
end
