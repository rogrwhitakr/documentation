# replace the icon config
sudo cp _httpd/conf.d-icons.conf /etc/httpd/conf.d/icons.conf && sudo systemctl restart httpd; systemctl status httpd

# replace with documentation
sudo cp _httpd/conf.d-documentation.conf /etc/httpd/conf.d/docs.conf && sudo systemctl restart httpd; systemctl status httpd

# trying a topher
sudo cp web/_httpd/conf.d-docs-psql.conf /etc/httpd/conf.d/docs-psql.conf && \
    sudo cp web/_httpd/conf.d-docs-icons.conf /etc/httpd/conf.d/docs-icons.conf && \
    sudo systemctl restart httpd; systemctl status httpd

# removeing the icons virthost, and u´only using the psql docs one
# it seems they cannot coexist, they dont know of each other?
sudo rm /etc/httpd/conf.d/docs-icons.conf && \
    sudo systemctl restart httpd; systemctl status httpd

# includes example
sudo cp web/_documentation/includes.html web/_documentation/footer.html /var/www/docs/includes/ && \
    sudo cp web/_httpd/includes.example.conf /etc/httpd/conf.d/includes.example.conf && \
    sudo systemctl restart httpd; systemctl status httpd

# unified docs.conf
sudo cp web/_httpd/conf.d-docs.conf /etc/httpd/conf.d/docs.conf && \
    sudo systemctl restart httpd; systemctl status httpd

# copy the index file
sudo cp web/_documentation/index.html /var/www/docs/