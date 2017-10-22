#!/bin/bash

docker pull mongo-express:latest
docker run --name mongo-express --link mongo-db:mongo -dip 8081:8081 mongo-express
docker stop mongo-express

cp /srv/nevsoft/setup/ShellScripts/docker-container/mongo-express/mongo-express /etc/init.d/mongo-express
chown root:root /etc/init.d/mongo-express
chmod 755 /etc/init.d/mongo-express

cp /srv/nevsoft/setup/ShellScripts/docker-container/mongo-express/mongo-express.service /etc/systemd/system/mongo-express.service
chown root:root /etc/systemd/system/mongo-express.service
chmod 755 /etc/systemd/system/mongo-express.service

update-rc.d mongo-express defaults

systemctl daemon-reload
systemctl start mongo-express.service
systemctl enable mongo-express.service
