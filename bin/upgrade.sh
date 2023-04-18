#!/bin/bash

# set splunk path
SPLUNK_HOME=/opt/splunkforwarder


echo "Upgrading Splunk to Version 8.2.10"

$SPLUNK_HOME/bin/splunk stop

tar -zxvf $SPLUNK_HOME/etc/apps/upgrade_linux_uf/static/splunkforwarder-8.2.10-417e74d5c950-Linux-x86_64.tgz -C /opt

$SPLUNK_HOME/bin/splunk start --accept-license --answer-yes
 

