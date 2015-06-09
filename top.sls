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
    - certificates
    - rsyslog.app
  'backup*':
    - nfs
    - backup.master
#     rsync.backup should be in /srv/private/pillar/rsync
    - rsync.backup
  'salt*':
    - sysctl.harden
    - rsync.salt_master
    - backup
    - logrotate.salt
    - basesystem.salt
  'roles:db':
    - match: grain
    - mysql
    - backup
    - rsync.backup
  'roles:postgres':
    - match: grain
    - postgres
  'db1*':
    - mysql.db1
  'db2*':
    - mysql.db2
  'redis*':
    - redis
    - sysctl.redis
  'sessions*':
    - redis
    - sysctl.redis
  'roles:monitor':
    - match: grain
    - logstash.receptacle
  'roles:bots':
    - match: grain
    - bots
  'roles:elastic':
    - match: grain
    - sysctl.elasticsearch
    - logrotate.elasticsearch
    - nfs
  'roles:specs':
    - match: grain
    - publican
  'roles:docker':
    - match: grain
    - roles.docker
    - basesystem.docker
  'roles:notes':
    - match: grain
    - basesystem.notes
  'roles:auth':
    - match: grain
    - basesystem.auth
  'roles:stats':
    - match: grain
    - basesystem.stats

# vim: ai filetype=yaml tabstop=2 softtabstop=2 shiftwidth=2

