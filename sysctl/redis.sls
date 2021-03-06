include:
  - sysctl

## This might seem odd, but by default we load sysctl
## But that one will override it. This has to be more throughly tested #TODO
exclude:
  - sls: sysctl

sysctl:
  params:
    - name: vm.overcommit_memory
      value: 2
    - name: vm.overcommit_ratio
      value: 80
    - name: net.ipv6.conf.default.disable_ipv6
      value: 1
    - name: net.ipv6.conf.all.disable_ipv6
      value: 1
    - name: vm.panic_on_oom
      value: 1
    - name: kernel.panic
      value: 10

