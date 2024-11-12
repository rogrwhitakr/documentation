#! /usr/bin/env bash

# default
sudo tail -f /var/log/httpd/*log

# coloring would be nice
# when you have logs that have these info levels, for example
tail -f /path/to/log | sed --unbuffered \
    -e 's/\(.*INFO.*\)/\o033[32m\1\o033[39m/' \
    -e 's/\(.*SEVERE.*\)/\o033[31m\1\o033[39m/'

# with multiple paths
sudo tail -f /var/www/{data-importer,firefly-iii}/storage/logs/*.log