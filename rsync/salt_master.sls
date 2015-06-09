rsync:
  shares_add:
    - name: wp-content-uploads
      comment: Fetch WordPress uploads so we can commit them back in our repo. To use, call `wpd-deploy blog`, and refer to salt://code/blog.sls state.
      path: /srv/code/blog/repo/wp-content/uploads/
      'read only': 'no' # This is deliberate, otherwise salt would write string from boolean
      list: 'yes'       # same reason as ^
      uid: nobody
      gid: deployment
      'auth users': codesync
      'secrets file': /etc/codesync.secrets

