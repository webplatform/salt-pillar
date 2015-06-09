rsync:
  shares:
    - name: code
      comment: Code share
      path: /srv/code/
      uid: nobody
      gid: nogroup
      'auth users': codesync
      'secrets file': /etc/codesync.secrets
      'client secret file': /etc/codesync.secret
    - name: backup
      comment: Backup share2
      path: /mnt/backup/
      uid: root
      gid: root
      'auth users': backup
      'secrets file': /etc/backup.secrets
      'client secret file': /etc/backup.secret

