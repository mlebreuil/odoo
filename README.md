# Create a new service
Create a directory with the service name in the home folder  
clone the git repository  
```
git clone https://github.com/mlebreuil/odoo.git
```
Install the certificates:
```
sudo docker pull certbot/certbot  
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \  
            -v /home/lebreuilm/<service name>/ssl/:/etc/letsencrypt \  
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \  
            certbot/certbot certonly\  
            --standalone \  
            -d <service name>.famillelebreuil.net 
 ```
start the containers  
```
sudo docker-compose up
```

# renew the certificat
## Stop the containers:  
cd in the odoo directory  
```
sudo docker-compose stop  
```
## run certbot using a container
```
sudo docker pull certbot/certbot  
sudo docker run -it --rm -p 443:443 -p 80:80 --name certbot \  
            -v /home/lebreuilm/<service name>/ssl/:/etc/letsencrypt \  
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \  
            certbot/certbot certonly\  
            --standalone \  
            -d <service name>.famillelebreuil.net  
```
