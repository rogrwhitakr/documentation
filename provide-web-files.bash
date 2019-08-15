#! /usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__dir="$(cd "$(dirname "${__dir}")" && pwd)"
source "${__dir}/script/helpers/init.bash"

source ~/northern-lights/script/helpers/init.bash
source ~/northern-lights/script/helpers/printer.bash

print GREEN "im up in hea"
# vars
httpd_conf_dir="/etc/httpd/conf.d"
httpd_web_dir="/var/www"

# folder to move and modify
website="color-picker"

exit 0