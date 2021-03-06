# Create a new service
Create a directory with the service name in the home folder  
clone the git repository

```bach
git clone https://github.com/mlebreuil/odoo.git
```

Install the certificates:

```bach
sudo docker pull certbot/certbot  
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \  
            -v /home/lebreuilm/odoo/ssl/:/etc/letsencrypt \  
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \  
            certbot/certbot certonly\  
            --manual\
            --preferred-challenges dns -d odoo.famillelebreuil.net
 ```

Update the nginx config file to point to the right ssl directory  
start the containers  

```bash
sudo docker-compose up
```

or:

```bash
sudo docker-compose up -d
```

or, tu update the images :

```bash
sudo docker-compose up --force-recreate --build -d
```

# renew the certificate

## Stop the containers
cd in the odoo directory  

```bach
sudo docker-compose stop  
```

## run certbot using a container

```bach
sudo docker pull certbot/certbot  
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \
            -v /home/lebreuilm/odoo/ssl/:/etc/letsencrypt \
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \
            certbot/certbot certonly \
            --manual \
            --preferred-challenges dns -d odoo.famillelebreuil.net
```

# Upgrade

[OpenUpgrade guide](https://doc.therp.nl/openupgrade/migration_details.html)  
