#! /usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# __dir="$(cd "$(dirname "${__dir}")" && pwd)"
#source "${__dir}/script/helpers/init.bash"

source ~/northern-lights/script/helpers/init.bash
source ~/northern-lights/script/helpers/printer.bash

print GREEN "im up in hea"
# vars
httpd_conf_dir="/etc/httpd/conf.d"
httpd_web_dir="/var/www"
httpd_conf_template="${__dir}/_website.conf"

# folder to move and modify
website_content="color-picker"
website_name="color-picker"
website_config="${httpd_conf_dir}/${website_name}.conf"

# create the config file
if [[ ! -f "${website_config}" ]]; then
    # only execute selected commands as root
    sudo -u root touch "${website_config}"
    if [[ $? == 0 ]]; then
        print GREEN "config file "${website_config}" successfully created!"
    fi
else
    print YELLOW "config file "${website_config}" already exists, continuing..."
fi

# fill the config file
print YELLOW "filling config with template config"
sudo -u root sed "s/website/${website_name}/" "${httpd_conf_template}" > ${website_config}
if [[ $? == 0 ]]; then
    print GREEN "config file "${website_config}" successfully filled!"
fi

exit 0
