include:
  - sysctl

## This might seem odd, but by default we load sysctl ...
## Mirror with what’s in sysctl/redis.sls pillar
exclude:
  - sls: sysctl

sysctl:
  params:
    - name: vm.overcommit_memory
      value: 2
    - name: vm.overcommit_ratio
      value: 80
    - name: vm.panic_on_oom
      value: 1
    - name: kernel.panic
      value: 10
    - name: vm.swappiness
      value: 1

