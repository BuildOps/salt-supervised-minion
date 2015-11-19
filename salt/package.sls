salt-repo:
  pkgrepo.managed:
    - humanname: SaltStack Repository
    - file: /etc/apt/sources.list.d/salt.list
    - name: deb http://repo.saltstack.com/apt/ubuntu/ubuntu{{ grains['osrelease_info'][0] }}/latest {{ grains['oscodename'] }} main
    - key_url: https://repo.saltstack.com/apt/ubuntu/ubuntu{{ grains['osrelease_info'][0] }}/latest/SALTSTACK-GPG-KEY.pub

salt-package:
  pkg.latest:
    - name: salt-minion
    - refresh: True
