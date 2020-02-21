#!/usr/bin/env bash
# {{ ansible_managed }}

source /volume/docker/letsencrypt/.venv/bin/activate
certbot renew

cp "/etc/letsencrypt/live/{{ ansible_fqdn }}/fullchain.pem" "/volume/docker/mailcow/repo/data/assets/ssl/cert.pem"
cp "/etc/letsencrypt/live/{{ ansible_fqdn }}/privkey.pem" "/volume/docker/mailcow/repo/data/assets/ssl/key.pem"

docker exec "$(docker ps -qaf name=postfix-mailcow)" postfix reload
docker exec "$(docker ps -qaf name=nginx-mailcow)" nginx -s reload
docker exec "$(docker ps -qaf name=dovecot-mailcow)" dovecot reload
