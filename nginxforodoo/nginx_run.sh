#!/bin/sh
# Start nginx
service nginx start
sudo certbot certonly --webroot -w /usr/share/nginx/html/famillelebreuil -d odoo.famillelebreuil.net
