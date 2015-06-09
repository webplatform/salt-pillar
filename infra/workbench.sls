infra:


  current:
    tld: workbench.local

  notes-server:
    port: 8001
    public_url: https://notes.workbench.local
    ## Make sure it matches infra:elasticsearch
    elastic_endpoint: http://10.10.10.103:9200
    sender_email: notifier-notes@workbench.local

  auth-server:
    auth:
      host: 10.10.10.189
      port: 9000
    profile:
      host: 10.10.10.189
      port: 8081
    oauth:
      host: 10.10.10.189
      port: 9010
    content:
      host: 10.10.10.189
      port: 3030
    endpoints:
      auth: https://oauth.accounts.workbench.local/v1/authorization
      token: https://oauth.accounts.workbench.local/v1/token
      session: https://profile.accounts.workbench.local/v1/session
      session_read: https://profile.accounts.workbench.local/v1/session/read
      session_recover: https://profile.accounts.workbench.local/v1/session/recover

  gdnsd_timestamp: 2015052200

  # Host names we want to override public name (e.g. api.accounts.webplatform.org)
  # into using its private IP address.
  # Most important keys: api.accounts, oauth.accounts, profile.accounts
  hardcoded_entries:
    api.accounts: 10.10.10.189
    oauth.accounts: 10.10.10.189
    profile.accounts: 10.10.10.189

  # In use for each node /etc/hosts and entries will be
  # refered to as "foo.local.wpdn"
  # Most important keys: salt, mail, monitor, backup
  hosts_entries:
    salt: 172.28.128.3

  db_servers:
    mysql:
      masterdb: 10.10.10.74
#      slaves:
#        - 10.10.10.74

  ## Ensure it matches notes:elastic_endpoint
  ## infra:elasticsearch:backup_nfs_mountpoint MUST match at pillar nfs:server:exports for ElasticSearch
  elasticsearch:
    backup_nfs_mountpoint: /srv/exports/elasticsearch
    backup_owner_uid: 107
    backup_owner_gid: 112
    private: 10.10.10.100
    port: 9200
    nodes-wiki:
      - 10.10.10.110
    nodes:
      - 10.10.10.100
      - 10.10.10.103

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  sessions_memcache:
    - '10.10.10.139:11211'
    - '10.10.10.140:11211'
    - '10.10.10.115:11211'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  sessions_redis:
    - '10.10.10.139:6379'
    - '10.10.10.140:6379'
    - '10.10.10.115:6379'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  alpha_redis:
    - '10.10.10.63:6379'
    - '10.10.10.114:6379'

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  alpha_memcache:
    - '10.10.10.64:11211'
    - '10.10.10.65:11211'
    - '10.10.10.113:11211'

  public_ips:
    salt:
      - 173.236.254.95
    app:
      - 173.236.255.110
      - 173.236.255.111
      - 173.236.255.112
    mail:
      - 173.236.254.98
      - 173.236.254.99
    bots:
      - 173.236.254.100
    blog:
      - 173.236.255.117
    project:
      - 173.236.255.116
    notes:
      - 173.236.254.96
    frontends:
      - 173.236.255.115
      - 173.236.255.113
    rsync.specs:
      - 67.205.62.137

# 208.113.157.138
