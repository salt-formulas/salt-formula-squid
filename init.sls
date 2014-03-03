
include:
{% if pillar.squid.apt_proxy is defined %}
- squid.apt_proxy
{% endif %}
