# Dockerized postgres on systemd unit

Requirements:
 - runned docker service

How to install:
  - `git clone git@github.com:0x000def42/docker-systemd-postgres11.git`
  - `cd docker-systemd-postgres11 && sudo make`

It's will: 
- build postgres docker 11 image
- create docker volume `postgres11.service.data`
- copy `postgres11` unit into `/etc/systemd/system/postgres11.service`
- and run `systemctl enable postgres11.service` and `systemctl restart postgres11.service`