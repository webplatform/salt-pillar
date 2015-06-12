#
# Vagrant workbench setup, using two computers on a LAN
#
# You’ll need two computers, one to work from, and another one on the same LAN.
#
# On each computer, clone https://github.com/webplatform/ops
#
# Main computer, with LAN I P 192.168.0.101, run;
#   - vagrant-workbench/
#   - vagrant-minions/:
#     minions:
#       - db-masterdb
#       - app
#
# Other computer, with LAN IP 192.168.0.102 in the settings below;
#   - vagrant-minions/:
#     minions:
#       - docker
#       - postgres
#       - sessions0
#
# The computer you work from I run salt vagrant-workbench and app,db-masterdb vagrant-minion VMs
# on the same computer using their respective port_forward.
#

infra:

  current:
    tld: workbench.wpdn

  notes-server:
    port: 8001
    public_url: https://notes.workbench.wpdn
    ## Make sure it matches infra:elasticsearch
    elastic_endpoint: http://192.168.0.102:9200
    sender_email: notifier-notes@workbench.wpdn

  auth-server:
    auth:
      host: 192.168.0.102
      port: 9000
    profile:
      host: 192.168.0.102
      port: 8081
    oauth:
      host: 192.168.0.102
      port: 9010
    content:
      host: 192.168.0.102
      port: 3030
    endpoints:
      auth: https://oauth.accounts.workbench.wpdn/v1/authorization
      token: https://oauth.accounts.workbench.wpdn/v1/token
      session: https://profile.accounts.workbench.wpdn/v1/session
      session_read: https://profile.accounts.workbench.wpdn/v1/session/read
      session_recover: https://profile.accounts.workbench.wpdn/v1/session/recover

  gdnsd_timestamp: 2015052200

  # Host names we want to override public name (e.g. api.accounts.webplatform.org)
  # into using its private IP address.
  # Most important keys: api.accounts, oauth.accounts, profile.accounts
  hardcoded_entries:
    api.accounts: 192.168.0.102
    oauth.accounts: 192.168.0.102
    profile.accounts: 192.168.0.102

  # In use for each node /etc/hosts and entries will be
  # refered to as "foo.workbench.wpdn"
  # Most important keys: salt, mail, monitor, backup
  hosts_entries:
    # We are in Vagrant with port_forward set, lets use my LAN IP address
    # so my other machines can use it
    salt: 192.168.0.101

  db_servers:
    postgres:
      writes: 192.168.0.102
    mysql:
      writes: 192.168.0.101

  ## Ensure it matches notes:elastic_endpoint
  ## infra:elasticsearch:backup_nfs_mountpoint MUST match at pillar nfs:server:exports for ElasticSearch
  elasticsearch:
    backup_nfs_mountpoint: /srv/exports/elasticsearch
    backup_owner_uid: 107
    backup_owner_gid: 112
    private: 192.168.0.102
    port: 9200
    nodes-wiki:
      - 192.168.0.101
    nodes:
      - 192.168.0.101
      - 192.168.0.102

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  sessions_memcache:
    - '192.168.0.102:11211'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  sessions_redis:
    - '192.168.0.102:6379'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  alpha_redis:
    - '192.168.0.102:6379'

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  alpha_memcache:
    - '192.168.0.102:11211'

