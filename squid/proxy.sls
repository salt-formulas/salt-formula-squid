{%- from "squid/map.jinja" import proxy with context %}
{%- if proxy.enabled %}

squid_packages:
  pkg.installed:
  - names: {{ proxy.pkgs }}

{{ proxy.config_file }}:
  file.managed:
  - source: salt://squid/files/squid.conf
  - template: jinja
  - require:
    - pkg: squid_packages

squid_service:
  service.running:
  - name: {{ proxy.service }}
  - require:
    - pkg: squid_packages
  - watch:
    - file: {{ proxy.config_file }}

{%- endif %}