Install / renew certificat
# Pull the docker image
sudo docker pull certbot/certbot
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \
            -v /home/lebreuilm/ssl/:/etc/letsencrypt \
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \
            certbot/certbot certonly\
            --standalone \
            -d odoo.famillelebreuil.net
