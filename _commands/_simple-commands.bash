# replace the icon config
sudo cp _httpd/conf.d-icons.conf /etc/httpd/conf.d/icons.conf && sudo systemctl restart httpd; systemctl status httpd

# replace with documentation
sudo cp _httpd/conf.d-documentation.conf /etc/httpd/conf.d/docs.conf && sudo systemctl restart httpd; systemctl status httpd

# trying a topher
sudo cp web/_httpd/conf.d-docs-psql.conf /etc/httpd/conf.d/docs-psql.conf && \
    sudo cp web/_httpd/conf.d-docs-icons.conf /etc/httpd/conf.d/docs-icons.conf && \
    sudo systemctl restart httpd; systemctl status httpd
