infra:
#  salt_testing: True

  current:
    tld: webplatformstaging.org

  notes-server:
    port: 8001
    public_url: https://notes.webplatformstaging.org
    ## Make sure it matches infra:elasticsearch
    elastic_endpoint: http://10.10.10.4:9200
    sender_email: notifier-notes@webplatformstaging.org

  auth-server:
    auth:
      host: 10.10.10.3
      port: 9000
    profile:
      host: 10.10.10.3
      port: 8081
    oauth:
      host: 10.10.10.3
      port: 9010
    content:
      host: 10.10.10.3
      port: 3030
    endpoints:
      auth: https://oauth.accounts.webplatformstaging.org/v1/authorization
      token: https://oauth.accounts.webplatformstaging.org/v1/token
      session: https://profile.accounts.webplatformstaging.org/v1/session
      session_read: https://profile.accounts.webplatformstaging.org/v1/session/read
      session_recover: https://profile.accounts.webplatformstaging.org/v1/session/recover

  gdnsd_timestamp: 2015061600

  # Host names we want to override public name (e.g. api.accounts.webplatform.org)
  # into using its private IP address.
  # Most important keys: api.accounts, oauth.accounts, profile.accounts
  hardcoded_entries:
    api.accounts: 10.10.10.3
    oauth.accounts: 10.10.10.3
    profile.accounts: 10.10.10.3

  # In use for each node /etc/hosts and entries will be
  # refered to as "foo.local.wpdn"
  # Most important keys: salt, masterdb, mail, monitor, backup
  hosts_entries:
    salt: 10.10.10.72
    masterdb: 10.10.10.84
    backup: 10.10.10.74
    mail: 10.10.10.75
    monitor: 10.10.10.83

  db_servers:
    postgres:
      writes: 10.10.10.2
    mysql:
      writes: 10.10.10.84

  ## Ensure it matches notes:elastic_endpoint
  ## infra:elasticsearch:backup_nfs_mountpoint MUST match at pillar nfs:server:exports for ElasticSearch
  elasticsearch:
    backup_nfs_mountpoint: /srv/exports/elasticsearch
    backup_owner_uid: 107
    backup_owner_gid: 112
    private: 10.10.10.4
    port: 9200
    nodes-wiki:
      - 10.10.10.2
    nodes:
      - 10.10.10.4

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  sessions_memcache:
    - '10.10.10.76:11211'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  sessions_redis:
    - '10.10.10.76:6379'

  ## MUST be strings, e.g. '10.10.10.1:6379'!
  alpha_redis:
    - '10.10.10.77:6379'

  ## MUST be strings, e.g. '10.10.10.1:11211'!
  alpha_memcache:
    - '10.10.10.78:11211'

  public_ips:
    app:
      - 173.236.254.223
      - 173.236.254.224
      - 173.236.254.225
    blog:
      - 173.236.254.226
    project:
      - 173.236.254.227
    salt:
      - 173.236.254.239
    mail:
      - 173.236.254.235
      - 173.236.254.236
    bots:
      - 173.236.254.237
    frontend:
      - 173.236.254.228
      - 173.236.255.186
      - 173.236.254.222

