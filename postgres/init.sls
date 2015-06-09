# http://git.postgresql.org/gitweb/?p=postgresql.git;a=blob_plain;f=src/backend/utils/misc/postgresql.conf.sample;hb=HEAD

postgres:
  pkg_dev: False
  pkg_libpq_dev: False

  conf_dir: /etc/postgresql/9.3/main

  pg_hba.conf: salt://postgres/pg_hba.conf

  lookup:
    pkg: 'postgresql-9.3'
    pg_hba: '/etc/postgresql/9.3/main/pg_hba.conf'

  users:

    discourse:
      createdb: True
      superuser: True

  # This section cover this ACL management of the pg_hba.conf file.
  # <type>, <database>, <user>, [host], <method>
  acls:
    - ['local', 'discourse', 'discourse']
    - ['host', 'all', 'all', '10.10.10.0/24', 'trust']


  databases:
    discourse:
      owner: discourse
      user: discourse
      template: template0
      lc_ctype: 'C.UTF-8'
      lc_collate: 'C.UTF-8'

  postgresconf: |
    listen_addresses = '*'
    syslog_facility = 'local1' # see /etc/rsyslog.d/60-local1.conf

