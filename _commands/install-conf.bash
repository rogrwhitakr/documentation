#! /usr/bin/env bash

if [[ "$(id -u)" != 0 ]]; then
	echo -e "execute with sudo:\nsudo $0 <arg>\nexiting!"
	exit 1
fi

if [[ -z "${1}" ]]; then
	echo -e "no argument provided!\nexiting!" 
	exit 1
fi 

httpd_conf_dir = "/etc/httpd/conf.d"
httpd_conf_dir = "/etc/httpd/conf.d"

cp "${1}" "${httpd_conf_dir}" 

