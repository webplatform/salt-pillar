base:
  '*':
    # private
    - accounts
    - sshkeys
    # Not private
    - sysctl
    - logrotate
    - infra
  'salt*':
    - sysctl.harden
    - logrotate.salt
    - basesystem.salt

# vim: ai filetype=yaml tabstop=2 softtabstop=2 shiftwidth=2
