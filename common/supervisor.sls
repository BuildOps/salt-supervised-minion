supervisor-package:
  pkg.installed:
    - name: supervisor

supervisor-service:
  service.running:
    - name: supervisor
    - enable: True
    - watch:
      - file: supervisor-config
      - pkg: supervisor-package

supervisor-config:
  file.managed:
    - name: /etc/supervisor/supervisord.conf
    - source: salt://common/files/etc/supervisor/supervisord.conf
    - user: root
    - group: root
    - mode: 644
