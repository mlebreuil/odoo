# Install / renew the certificat
Stop the containers:  
cd in the odoo directory  
sudo docker-compose stop  
sudo docker pull certbot/certbot  
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \  
            -v /home/lebreuilm/ssl/:/etc/letsencrypt \  
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \  
            certbot/certbot certonly\  
            --standalone \  
            -d odoo.famillelebreuil.net  
