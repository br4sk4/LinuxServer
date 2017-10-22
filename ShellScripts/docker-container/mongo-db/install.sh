#!/bin/bash

docker pull mongo:3.4
docker run --name mongo-db -dip 27017:27017 mongo
docker stop mongo-db

cp /srv/nevsoft/setup/ShellScripts/docker-container/mongo-db /etc/init.d/mongo-db
chown root:root /etc/init.d/mongo-db
chmod 755 /etc/init.d/mongo-db

cp /srv/nevsoft/setup/ShellScripts/docker-container/mongo-db/mongo-db.service /etc/systemd/system/mongo-db.service
chown root:root /etc/systemd/system/mongo-db.service
chmod 755 /etc/systemd/system/mongo-db.service

update-rc.d mongo-db defaults

systemctl daemon-reload
systemctl start mongo-db.service
systemctl enable mongo-db.service
