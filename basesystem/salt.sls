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
      /srv/formulas/docker:
        origin: https://github.com/webplatform/docker-formula.git
        remotes:
          upstream: git@github.com:saltstack-formulas/docker-formula.git
      /srv/formulas/logrotate:
        origin: https://github.com/webplatform/logrotate-formula.git
        remotes:
          upstream: git@github.com:webplatform/logrotate-formula.git

    # See: https://github.com/webplatform/ops in salt-master/init.sh
    srv_repos:
      /srv/private:
        origin: git@source.webplatform.org:pillars-private.git
        branch: slimmer
      /srv/salt:
        origin: https://github.com/webplatform/salt-states.git
        branch: slimmer
        remotes:
          upstream: git@source.webplatform.org:public-salt-states.git
      /srv/pillar:
        origin: https://github.com/webplatform/salt-pillar.git
        branch: slimmer
        remotes:
          upstream: git@source.webplatform.org:public-salt-pillar.git
      /srv/ops:
        origin: https://github.com/webplatform/ops.git
        branch: slimmer
        remotes:
          upstream: git@source.webplatform.org:public-ops.git

    # See: https://github.com/webplatform/ops in salt-master/code.sh
    srv_code_repos:
      /srv/code/dabblet/repo:
        origin: https://github.com/webplatform/dabblet.git
        branch: webplatform-customizations
        remotes:
          upstream: git@github.com:webplatform/dabblet.git
      /srv/code/webat25/repo:
        origin: git@source.webplatform.org:webat25.git
        remotes:
          upstream: https://gitlab.w3.org/webplatform/webat25.org.git
      /srv/code/www/repo:
        origin: https://github.com/webplatform/www.webplatform.org.git
        remotes:
          upstream: git@github.com:webplatform/www.webplatform.org.git
      /srv/code/generator-docs/repo:
        origin: https://github.com/webplatform/generator-docs.git
        remotes:
          upstream: git@github.com:webplatform/generator-docs.git

    srv_code_unpacker_archives:
      /srv/code/generator-docs/repo/build:
        href: http://objects.dreamhost.com/wpd-packages/dists/docs.tar.bz2


    # See: https://github.com/webplatform/ops in salt-master/code.sh
    content_repos:
      /srv/code/generator-docs/repo/src:
        origin: https://github.com/webplatform/docs.git
        branch: master
      /srv/code/generator-docs/repo/src/Meta:
        origin: https://github.com/webplatform/docs-meta.git
        branch: master
      /srv/code/generator-docs/repo/src/WPD:
        origin: https://github.com/webplatform/docs-wpd.git
        branch: master
