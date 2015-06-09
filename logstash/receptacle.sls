logstash:
  inputs:
    - plugin_name: file
      path:
        - /var/log/syslog
        - /var/log/monit.log
        - /var/log/auth.log
        - /var/log/salt/minion
      type: syslog
  filters:
    - plugin_name: grok
      match:
        message: '%{SYSLOGTIMESTAMP:syslog_timestamp} %{SYSLOGHOST:syslog_hostname} %{DATA:syslog_program}(?:\[%{POSINT:syslog_pid}\])?: %{GREEDYDATA:syslog_message}'
      add_field:
        received_at: '%{@timestamp}'
        received_from: '%{host}'
  outputs:
    - plugin_name: lumberjack
      hosts:
        - monitor.local.wpdn
      port: 5000
      ssl_certificate: /etc/ssl/private/ssl-cert-snakeoil.key
