include:
  - logrotate

logrotate:
  jobs:
    "/var/log/elasticsearch/webplatform.log":
      - "daily"
      - "missingok"
      - "copytruncate"
      - "rotate 14"
      - "compress"
      - "delaycompress"
      - "notifempty"
      - "create 644 elasticsearch elasticsearch"
    "/var/log/elasticsearch/webplatform_index_search_slowlog.log":
      - "daily"
      - "missingok"
      - "copytruncate"
      - "rotate 14"
      - "compress"
      - "delaycompress"
      - "notifempty"
      - "create 644 elasticsearch elasticsearch"
    "/var/log/elasticsearch/webplatform_index_indexing_slowlog.log":
      - "daily"
      - "missingok"
      - "copytruncate"
      - "rotate 14"
      - "compress"
      - "delaycompress"
      - "notifempty"
      - "create 644 elasticsearch elasticsearch"
