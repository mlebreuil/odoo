# Pull the docker image
sudo docker pull certbot/certbot
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \
            -v "./nginxforodoo/ssl/:/etc/letsencrypt" \
            -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
            certbot/certbot certonly\
            --webroot \
            --webroot-path ./nginxforodoo/www/odoo.famillelebreuil.net/
