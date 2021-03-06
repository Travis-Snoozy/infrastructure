vagrant /etc/hosts:
  host.present:
    - ip: 127.0.0.1
    - names:
      - {{ salt['pillar.get']('freeipa:server:hostname') }}
      - {{ salt['pillar.get']('freeipa:server:ui_domainname') }}
      - {{ salt['pillar.get']('traefik:ui_domainname') }}
      {% for subdomain in salt['pillar.get']('traefik:subdomains') %}
      - {{ subdomain }}.{{ salt['pillar.get']('traefik:domain') }}
      {% endfor %}
