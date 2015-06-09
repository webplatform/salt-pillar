sysctl:
  params:
    - name: vm.overcommit_memory
      value: 0
    - name: vm.overcommit_ratio
      value: 70
    - name: vm.panic_on_oom
      value: 1
    - name: kernel.panic
      value: 10

