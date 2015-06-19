basesystem:
  salt:

    # Should be the same for both:
    #   - https://github.com/webplatform/ops in vagrant-workbench/salt/states/workbench/salt.sls
    #   - https://github.com/webplatform/salt-states in salt/master.sls
    formulas_repos:
      /srv/formulas/basesystem:
        origin: https://github.com/webplatform/salt-basesystem.git
        remotes:
          upstream: git@github.com:webplatform/salt-basesystem.git
      /srv/formulas/sysctl:
        origin: https://github.com/webplatform/saltstack-sysctl-formula.git
        remotes:
          upstream: git@github.com:webplatform/saltstack-sysctl-formula.git
          author: https://github.com/bechtoldt/saltstack-sysctl-formula.git
      /srv/formulas/postgres:
        origin: https://github.com/webplatform/postgres-formula.git
        remotes:
          upstream: git@github.com:saltstack-formulas/postgres-formula.git
      /srv/formulas/docker:
        origin: https://github.com/webplatform/docker-formula.git
        remotes:
          upstream: git@github.com:saltstack-formulas/docker-formula.git
      /srv/formulas/logrotate:
        origin: https://github.com/webplatform/logrotate-formula.git
        remotes:
          upstream: git@github.com:webplatform/logrotate-formula.git
      /srv/formulas/redis:
        origin: https://github.com/webplatform/redis-formula.git
        remotes:
          upstream: git@github.com:saltstack-formulas/redis-formula.git
      /srv/formulas/nfs:
        origin: https://github.com/webplatform/nfs-formula.git
        remotes:
          upstream: git@github.com:saltstack-formulas/nfs-formula.git

    # See: https://github.com/webplatform/ops in salt-master/init.sh
    srv_repos:
      /srv/private:
        origin: git@source.webplatform.org:pillars-private.git
        branch: 201506-refactor
        remotes:
          upstream: https://gitlab.w3.org/webplatform/salt-pillar-private.git
      /srv/salt:
        origin: https://github.com/webplatform/salt-states.git
        branch: 201506-refactor
        remotes:
          upstream: git@source.webplatform.org:public-salt-states.git
      /srv/pillar:
        origin: https://github.com/webplatform/salt-pillar.git
        branch: 201506-refactor
        remotes:
          upstream: git@source.webplatform.org:public-salt-pillar.git
      /srv/ops:
        origin: https://github.com/webplatform/ops.git
        branch: 201506-refactor
        remotes:
          upstream: git@source.webplatform.org:public-ops.git

    # See: https://github.com/webplatform/ops in salt-master/code.sh
    srv_code_repos:
      /srv/code/buggenie/repo:
        origin: https://github.com/webplatform/thebuggenie.git
        branch: webplatform-customizations
        remotes:
          upstream: git@github.com:webplatform/thebuggenie.git
      /srv/code/dabblet/repo:
        origin: https://github.com/webplatform/dabblet.git
        branch: webplatform-customizations
        remotes:
          upstream: git@github.com:webplatform/dabblet.git
      /srv/code/bots/repo:
        origin: git@source.webplatform.org:pierc.git
      /srv/code/mailhub/repo:
        origin: git@source.webplatform.org:mailhub.git
        remotes:
          upstream: https://gitlab.w3.org/webplatform/private-mailhub.git
      /srv/code/webat25/repo:
        origin: git@source.webplatform.org:webat25.git
        remotes:
          upstream: https://gitlab.w3.org/webplatform/webat25.org.git
      /srv/code/campaign-bookmarklet/repo:
        origin: https://github.com/webplatform/campaign-bookmarklet.git
        remotes:
          upstream: git@github.com:webplatform/campaign-bookmarklet.git
      /srv/code/compat/repo:
        origin: https://github.com/webplatform/compatibility-data.git
        remotes:
          upstream: git@github.com:webplatform/compatibility-data.git
      /srv/code/docsprint-dashboard/repo:
        origin: https://github.com/webplatform/DocSprintDashboard.git
        remotes:
          upstream: git@github.com:webplatform/DocSprintDashboard.git
      /srv/code/www/repo:
        origin: https://github.com/webplatform/www.webplatform.org.git
        remotes:
          upstream: git@github.com:webplatform/www.webplatform.org.git
      /srv/code/blog/repo:
        origin: https://github.com/webplatform/blog-service.git
        remotes:
          upstream: git@github.com:webplatform/blog-service.git
