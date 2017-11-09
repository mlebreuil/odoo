FROM nginx:1.12
RUN apt-get update
RUN apt-get install --no-install-recommends --no-install-suggests -y certbot
RUN apt-get install --no-install-recommends --no-install-suggests -y cron
COPY crontab /etc/cron.d/crontab
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx_odoo.conf /etc/nginx/nginx_odoo.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY nginx_run.sh /run.sh
RUN chmod 555 /run.sh 
EXPOSE 80 443
ENTRYPOINT ["/run.sh"]
