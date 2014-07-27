
include:
{% if pillar.squid.proxy is defined %}
- squid.proxy
{% endif %}
