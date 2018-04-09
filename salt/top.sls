base:
  '*':
    - defaults

  'not bootstrap':
    - ufw

  'bootstrap':
    - pip
    - salt_master

  'salt-master':
    - pip
    - salt_master
    - salt_cloud
    - docker
    - letsencrypt
    - docker_intranet
    - docker_traefik
    - docker_jenkins
