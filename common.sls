
squid_packages:
  pkg.installed:
  - names:
    - squid

/etc/squid3/squid.conf:
  file.managed:
  - source: salt://squid/conf/squid.conf
  - template: jinja
  - require:
    - pkg: squid_packages

squid_service:
  service.running:
  - name: squid3
  - require:
    - pkg: squid_packages
    - file: /etc/squid3/squid.conf
  - watch:
    - file: /etc/squid3/squid.conf
