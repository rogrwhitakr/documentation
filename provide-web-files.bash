#! /usr/bin/env bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# __dir="$(cd "$(dirname "${__dir}")" && pwd)"
#source "${__dir}/script/helpers/init.bash"

source ~/northern-lights/script/helpers/init.bash
source ~/northern-lights/script/helpers/printer.bash

print GREEN "$0"
print LINE

# vars
httpd_conf_dir="/etc/httpd/conf.d"
httpd_web_dir="/var/www"
httpd_conf_template="${__dir}/_website.conf"

# folder to move and modify
website_content="color-picker"
website_name="color-picker"
website_config="${httpd_conf_dir}/${website_name}.conf"
website_site="${httpd_web_dir}/${website_name}"

# create the config file
if [[ ! -f "${website_config}" ]]; then
    # only execute selected commands as root
    sudo -u root touch "${website_config}"
    if [[ $? == 0 ]]; then
        print GREEN "config file "${website_config}" successfully created!"
    fi
else
    print YELLOW "config file "${website_config}" already exists, doing nothing..."
fi

# fill the config file
print YELLOW "filling config with template config data"
sudo -u root chmod 666 "${website_config}"
sudo -u root sed "s/website/${website_name}/" "${httpd_conf_template}" >"${website_config}"
if [[ $? == 0 ]]; then
    print GREEN "config file "${website_config}" contents successfully altered! Reverting permission bits"
    sudo -u root chmod 644 "${website_config}"
else
    print RED "no change happened to config file."
fi

# copy the "local" folder to the default webroot
print YELLOW "copying folder ${website_content} to webroot ${httpd_web_dir}."
print YELLOW "Creating ${website_site}"
sudo -u root cp -r "${website_content}" "${httpd_web_dir}"
if [[ $? == 0 ]]; then
    print GREEN "website contents successfully copied!"
else
    print RED "no success in copying documents."
fi

# edit the host file
# we do this programmatically, because...
# editing hosts file to include entry
entry="127.0.0.1    \
    $(grep ServerName "${website_config}" | awk '{ print $2 }') \
    $(grep ServerAlias "${website_config}" | awk '{ print $2 }') "

print YELLOW "creating hosts file entry"
print GREEN "${entry}"

# if empty, we can add
if [[ -z "$(grep "${entry}" /etc/hosts)" ]]; then
    print YELLOW "adding entry to hosts file"
    sudo -u root chmod 666 /etc/hosts
    sudo -u root echo "${entry:-"127.0.0.1   $(hostname)"}" >>/etc/hosts
    if [[ $? == 0 ]]; then
        print GREEN "host file contents successfully altered!"
        sudo -u root chmod 644 /etc/hosts
    else
        print RED "no success in altering hosts file."
    fi
else
    print YELLOW "entry exists, doing nothing"
fi

# restart the web server, so the changes can work
sudo -u root systemctl restart httpd.service || systemctl status httpd.service
print GREEN "web content now accessible under:"
print RED "http://$(grep ServerAlias "${website_config}" | awk '{ print $2 }')"

exit 0
