FROM odoo:10.0
COPY ./odoo.conf /etc/odoo/
# Expose Odoo services
EXPOSE 8069 8071
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
