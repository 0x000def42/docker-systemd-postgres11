# Dockerized postgres on systemd unit

Requirements:
 - runned docker service

How to install:
  - `git clone git@github.com:0x000def42/docker-systemd-postgres11.git`
  - `cd docker-systemd-postgres11 && sudo make`

It's will: 
- build postgres:11 docker image
- create docker volume `postgres11.service.data`
- create docker network `postgres11.network`
- copy `postgres11` unit into `/etc/systemd/system/postgres11.service`
- and run `systemctl enable postgres11.service` and `systemctl restart postgres11.service`

Postgres starts on 5432 host port. Access to it with user `postgres` and `postgrespassword`.
Also, connection available inside another docker containers under network `postgres11.network` by `postgres11.service` host.

Connect another docker to network:
```
docker run --network postgres11.network something
```
or via compose file:
```
  version: '3.*'
  services:
    youapp:
      networks:
        - postgres11.network
  networks:
    postgres11.network:
      external: true
```