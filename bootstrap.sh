#!/bin/sh

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
su - postgres -c "createuser -drs vagrant"
su - postgres -c "echo \"ALTER ROLE vagrant ENCRYPTED PASSWORD 'vagrant';\" | psql"

# Allow access from outside
echo "listen_addresses = '*'" >> /etc/postgresql/9.2/main/postgresql.conf
echo "host all all 10.0.0.0/8 md5" >> /etc/postgresql/9.2/main/pg_hba.conf
service postgresql restart
