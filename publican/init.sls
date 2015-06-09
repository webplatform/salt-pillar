publican:
  specs:
    'SVG1.1-ARIA': https://github.com/webspecs/SVG1.1-ARIA.git
    url: https://github.com/webspecs/url.git
    html-aria: https://github.com/webspecs/html-aria.git
    media-element: https://github.com/webspecs/media-element
  git_clone:
    /srv/webapps/publican:
      origin: https://github.com/webplatform/publican.git
      user: webapps
      before:
        - /srv/webapps/publican/spec-data
      remotes:
        upstream: https://github.com/webspecs/publican.git
  unpacker_archives:
    /srv/webapps/publican/spec-data:
      href: https://static.webplatform.org/wpd/packages/bikeshed/spec-data.tar.bz2
      user: webapps
