#
# Vagrant workbench setup, using two computers on a LAN
#
# You’ll need two computers, one to work from, and another one on the same LAN.
#
# On each computer, clone https://github.com/webplatform/ops
#
# Main computer, with LAN I P 192.168.0.101, run;
#   - vagrant-workbench/
#   - vagrant-minions/:
#     minions:
#       - db-masterdb
#       - app
#
# Other computer, with LAN IP 192.168.0.102 in the settings below;
#   - vagrant-minions/:
#     minions:
#       - docker
#       - postgres
#       - sessions0
#
# The computer you work from I run salt vagrant-workbench and app,db-masterdb vagrant-minion VMs
# on the same computer using their respective port_forward.
#

infra:
#  salt_testing: True

  current:
    tld: webplatform.local

  notes-server:
    port: 8001
    public_url: https://notes.webplatform.local
    ## Make sure it matches infra:elasticsearch
    elastic_endpoint: http://192.168.0.102:9200
    sender_email: notifier-notes@webplatform.local

  auth-server:
    auth:
      host: 192.168.0.102
      port: 9000
    profile:
      host: 192.168.0.102
      port: 8081
    oauth:
      host: 192.168.0.102
      port: 9010
    content:
      host: 192.168.0.102
      port: 3030
    endpoints:
      auth: https://oauth.accounts.webplatform.local/v1/authorization
      token: https://oauth.accounts.webplatform.local/v1/token
      session: https://profile.accounts.webplatform.local/v1/session
      session_read: https://profile.accounts.webplatform.local/v1/session/read
      session_recover: https://profile.accounts.webplatform.local/v1/session/recover

  gdnsd_timestamp: 2015121001

  # In use for each node /etc/hosts and entries will be
  # refered to as "foo.workbench.wpdn"
  # Most important keys: salt, mail
  hosts_entries:
    # We are in Vagrant with port_forward set, lets use my LAN IP address
    # so my other machines can use it
    salt: 192.168.0.102
