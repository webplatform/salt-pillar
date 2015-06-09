nfs:
  server:
    exports:
      ## Must match in pillar infra/production.sls (or staging.sls) at infra:elasticsearch:backup_nfs_mountpoint
      /srv/exports/elasticsearch: "elasticsearch(rw,sync,no_subtree_check)"

