rsyslog:
  aggregator_server: monitor-test.hpc.internal.wp
  aggregator_port: 5544
  watch_log_files:
    -
      file: /var/log/exim4/mainlog
      tag: 'exim:'
    -
      file: /var/log/messages
      tag: 'kernel:'
    -
      file: /var/syslog
      tag: 'CRON:'
