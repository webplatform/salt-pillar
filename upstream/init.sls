include:
  - upstream.{{ grains['level'] }}

upstream:
  cachet:
    path: /srv/webapps/status
    host_role: monitor
    port: 8000
  discourse:
    path: /srv/webapps/discuss
    host_role: docker
    port: 8001
  publican:
    path: /srv/webapps/publican
    host_role: specs
    port: 8002
  specs:
    # Make sure this path match in /srv/pillar/rsync/shares.sls
    path: /srv/webapps/publican/data/publish
    host_role: specs
    port: 8003
  piwik:
    path: /srv/webplatform/stats-server
    host_role: stats
    port: 8004
  hypothesis:
    path: /srv/webplatform/notes-server
    host_role: notes
    port: 8005
  etherpad:
    path: /srv/webapps/etherpad
    host_role: docker
    port: 8006
  wiki:
    path: /srv/webplatform/wiki/wpwiki/mediawiki
    host_role: app
    port: 8007
  buggenie:
    path: /srv/webplatform/buggenie/thebuggenie
    host_role: project
    port: 8007
  fxa_auth:
    path: /srv/webplatform/auth-server/auth
    host_role: auth
    port: 9000
  fxa_profile:
    path: /srv/webplatform/auth-server/profile
    host_role: auth
    port: 8081
  fxa_oauth:
    path: /srv/webplatform/auth-server/oauth
    host_role: auth
    port: 9010
  fxa_content:
    path: /srv/webplatform/auth-server/content
    host_role: auth
    port: 3030
  wordpress:
    path: /srv/webplatform/blog
    host_role: blog
    port: 8008

