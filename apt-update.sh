#!/bin/bash
# Author: Yevgeniy Goncharov aka xck, http://sys-adm.in
# All it one: apt update/upgrade/dist-upgrade/autoremove command 

# Sys env / paths / etc
# ---------------------------------------------------------------------\

PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd); cd $SCRIPT_PATH

# Update
# ---------------------------------------------------------------------\
apt-get update; apt-get -y upgrade; apt-get -y dist-upgrade; apt -y --purge autoremove
exit 0