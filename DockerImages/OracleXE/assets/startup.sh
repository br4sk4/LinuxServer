#!/bin/bash

LISTENER_ORA=/u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
TNSNAMES_ORA=/u01/app/oracle/product/11.2.0/xe/network/admin/tnsnames.ora

cp "${LISTENER_ORA}.tmpl" "$LISTENER_ORA"
sed -i "s/%hostname%/$HOSTNAME/g" "${LISTENER_ORA}"
sed -i "s/%port%/1521/g" "${LISTENER_ORA}"
cp "${TNSNAMES_ORA}.tmpl" "$TNSNAMES_ORA"
sed -i "s/%hostname%/$HOSTNAME/g" "${TNSNAMES_ORA}"
sed -i "s/%port%/1521/g" "${TNSNAMES_ORA}"

cd /etc/init.d
./oracle-xe start

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE
export PATH=$PATH:$ORACLE_HOME/bin

echo "alter system disable restricted session;" | sqlplus -s SYSTEM/oracle