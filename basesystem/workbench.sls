basesystem:
  workbench:
    app:
      {#-
       #  Didnt try this yet, idea is to allow clone of code from workbench,
       #  create and upload packages there, and let staging/production unpack them
       #}
      /srv/webplatform/wiki/wpwiki/mediawiki:
        origin: https://github.com/wikimedia/mediawiki.git
        branch: wmf/1.26wmf10
        #branch: wmf/1.25wmf15
        #branch: 1.24wmf16-wpd
        remotes:
          upstream: git@github.com:webplatform/mediawiki-core.git
    notes:
      /srv/webplatform/notes-server/repo:
        origin: https://github.com/webplatform/annotation-service.git
        remotes:
          upstream: git@github.com:webplatform/annotation-service.git
      /srv/webplatform/notes-server/h:
        origin: https://github.com/hypothesis/h.git
