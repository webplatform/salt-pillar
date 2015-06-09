include:
  - sysctl

sysctl:
  params:
    - name: net.ipv4.ip_forward
      value: 0
    - name: net.ipv4.conf.all.rp_filter
      value: 1
    - name: net.ipv4.conf.default.rp_filter
      value: 1
    - name: net.ipv4.icmp_echo_ignore_broadcasts
      value: 1
    - name: net.ipv4.conf.all.accept_source_route
      value: 0
    - name: net.ipv6.conf.all.accept_source_route
      value: 0
    - name: net.ipv4.conf.default.accept_source_route
      value: 0
    - name: net.ipv6.conf.default.accept_source_route
      value: 0
    - name: net.ipv4.conf.all.send_redirects
      value: 0
    - name: net.ipv4.conf.default.send_redirects
      value: 0
    - name: net.ipv4.tcp_syncookies
      value: 1
    - name: net.ipv4.tcp_max_syn_backlog
      value: 2048
    - name: net.ipv4.tcp_synack_retries
      value: 2
    - name: net.ipv4.tcp_syn_retries
      value: 5
    - name: net.ipv4.conf.all.log_martians
      value: 1
    - name: net.ipv4.icmp_ignore_bogus_error_responses
      value: 1
    - name: net.ipv4.conf.all.accept_redirects
      value: 0
    - name: net.ipv6.conf.all.accept_redirects
      value: 0
    - name: net.ipv4.conf.default.accept_redirects
      value: 0
    - name: net.ipv6.conf.default.accept_redirects
      value: 0
    - name: net.ipv4.icmp_echo_ignore_all
      value: 1
    - name: net.ipv4.conf.all.secure_redirects
      value: 0
    - name: net.ipv4.conf.default.secure_redirects
      value: 0
    - name: net.ipv6.conf.default.router_solicitations
      value: 0
    - name: net.ipv6.conf.default.accept_ra_rtr_pref
      value: 0
    - name: net.ipv6.conf.default.accept_ra_pinfo
      value: 0
    - name: net.ipv6.conf.default.accept_ra_defrtr
      value: 0
    - name: net.ipv6.conf.default.autoconf
      value: 0
    - name: net.ipv6.conf.default.dad_transmits
      value: 0
    - name: net.ipv6.conf.default.max_addresses
      value: 1

