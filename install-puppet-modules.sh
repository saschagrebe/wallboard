#!/bin/bash
mkdir -p /etc/puppet/modules;

# Update stdlib
puppet module upgrade puppetlabs-stdlib

# install tomcat module
if [ ! -d /etc/puppet/modules/tomcat ]; then
  puppet module install puppetlabs-tomcat --version 2.0.0
fi