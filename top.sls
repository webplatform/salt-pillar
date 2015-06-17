base:
  '*':
    - sshkeys
    - users
    - accounts
#     apache is for server-status
    - apache
    - sysctl
#     rsync.deployment should be in /srv/private/pillar/rsync
    - rsync.deployment
    - rsync.shares
    - infra
    - logrotate
    - upstream
  'app*':
    - ganglia.group.app
    - certificates
    - rsyslog.app
  'backup*':
    - ganglia.group.backup
    - nfs
    - backup.master
#     rsync.backup should be in /srv/private/pillar/rsync
    - rsync.backup
  'salt*':
    - ganglia.group.deployment
    - sysctl.harden
    - rsync.salt_master
    - backup
    - logrotate.salt
    - basesystem.salt
  'roles:masterdb':
    - match: grain
    - ganglia.group.db
    - mysql
    - backup
    - rsync.backup
  'roles:db':
    - match: grain
    - ganglia.group.db
    - mysql
    - backup
    - rsync.backup
  'roles:postgres':
    - match: grain
    - ganglia.group.db
    - postgres
  'db1*':
    - mysql.db1
  'db2*':
    - mysql.db2
  'roles:memcache':
    - match: grain
    - ganglia.group.keystores
  'roles:redis':
    - match: grain
    - ganglia.group.keystores
    - redis
    - sysctl.redis
  'roles:sessions':
    - match: grain
<<<<<<< HEAD
    - ganglia.group.keystores
=======
    - ganglia.group.sessions
>>>>>>> Ganglia clusters, removed unused formula
    - redis
    - sysctl.redis
  'roles:noc'
    - match: grain
    - ganglia.group.monitor
  'roles:monitor':
    - match: grain
    - ganglia.group.monitor
    - basesystem.monitor
  'roles:bots':
    - match: grain
    - ganglia.group.bots
    - bots
  'roles:elastic':
    - match: grain
    - ganglia.group.elasticsearch
    - sysctl.elasticsearch
    - logrotate.elasticsearch
    - nfs
  'roles:specs':
    - match: grain
    - ganglia.group.upstream
    - publican
  'roles:docker':
    - match: grain
    - ganglia.group.docker
    - roles.docker
    - basesystem.docker
  'roles:notes':
    - match: grain
    - ganglia.group.upstream
    - basesystem.notes
  'roles:auth':
    - match: grain
    - ganglia.group.upstream
    - basesystem.auth
  'roles:stats':
    - match: grain
    - ganglia.group.upstream
    - basesystem.stats
  'roles:mail':
    - match: grain
    - ganglia.group.mail
  'roles:project':
    - match: grain
    - ganglia.group.app
  'roles:blog':
    - match: grain
    - ganglia.group.app
  'roles:webat':
    - match: grain
    - ganglia.group.app
  'roles:discuss':
    - match: grain
    - ganglia.group.upstream
  'roles:frontend':
    - match: grain
    - ganglia.group.frontend

# vim: ai filetype=yaml tabstop=2 softtabstop=2 shiftwidth=2
