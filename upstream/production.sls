upstream:
  cachet:
    port: 8000
    path: /srv/webapps/status
    host_role: noc
    nodes:
      - 10.10.10.202
  discourse:
    port: 8001
    path: /srv/webapps/discuss
    host_role: docker
    nodes:
      - 10.10.10.202
  publican:
    port: 8002
    path: /srv/webapps/publican
    host_role: specs
    nodes:
      - 10.10.10.201
  specs:
    port: 8003
    # Make sure this path match in /srv/pillar/rsync/shares.sls
    path: /srv/webapps/publican/data/publish
    host_role: specs
    nodes:
      - 10.10.10.201
  piwik:
    port: 8004
    path: /srv/webplatform/stats-server
    host_role: stats
    nodes:
      - 10.10.10.208
  hypothesis:
    port: 8005
    path: /srv/webplatform/notes-server
    host_role: notes
    nodes:
      - 10.10.10.190
  etherpad:
    port: 8006
    path: /srv/webapps/etherpad
    host_role: docker
    nodes:
      - 10.10.10.202

