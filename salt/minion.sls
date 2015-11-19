include:
  - common.supervisor
  - salt.package

/etc/supervisor/conf.d/salt-minion.conf:
  file.managed:
    - source: salt://salt/files/etc/supervisor/conf.d/salt-minion.conf
    - user: root
    - group: root
    - mode: 644

salt-minion:
  service.dead:
    - enable: False
  supervisord.running:
    - update: True
    - restart: True
    - order: last
    - require:
      - file: /etc/supervisor/conf.d/salt-minion.conf
    - watch:
      - file: /etc/supervisor/conf.d/salt-minion.conf
      - pkg: salt-package
