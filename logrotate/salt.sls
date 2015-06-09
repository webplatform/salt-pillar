include:
  - logrotate

logrotate:
  jobs:
    # See also in: salt/logging/files/20-fastly.conf
    "/mnt/logs/fastly.log":
      - "weekly"
      - "missingok"
      - "rotate 52"
      - "compress"
      - "delaycompress"
      - "notifempty"
      - "create 640 root adm"
      - "sharedscripts"
    "/var/log/rsync.log":
      - "weekly"
      - "missingok"
      - "rotate 52"
      - "compress"
      - "delaycompress"
      - "notifempty"
      - "create 644 root root"
      - "sharedscripts"
