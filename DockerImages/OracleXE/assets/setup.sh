#!/bin/bash

yum install -y bc
yum install -y net-tools
yum install -y libaio
yum install -y unzip

rpm -ivh /assets/oracle-xe-11.2.0-1.0.x86_64.rpm

mv /assets/init.ora /u01/app/oracle/product/11.2.0/xe/config/scripts
mv /assets/initXETemp.ora /u01/app/oracle/product/11.2.0/xe/config/scripts

cp /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora.tmpl
cp /u01/app/oracle/product/11.2.0/xe/network/admin/tnsnames.ora /u01/app/oracle/product/11.2.0/xe/network/admin/tnsnames.ora.tmpl

/etc/init.d/oracle-xe configure responseFile=/assets/response/xe.rsp

echo 'export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe' >> /etc/bash.bashrc
echo 'export PATH=$ORACLE_HOME/bin:$PATH' >> /etc/bash.bashrc
echo 'export ORACLE_SID=XE' >> /etc/bash.bashrc

mv /assets/startup.sh /usr/sbin/startup.sh
chmod +x /usr/sbin/startup.sh

rm -r /assets/