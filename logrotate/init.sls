#
# Logs rotation
#
# Dependencies with `gitfs_remotes`, check in salt/files/gitfs.conf for the following:
#
#   - logrotate:
#     href: https://github.com/webplatform/logrotate-formula
#
logrotate:
  pkg: 'logrotate'
  service: 'crond'
  jobs: {}

