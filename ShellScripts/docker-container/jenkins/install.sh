#!/bin/bash

#mkdir -p /srv/jenkins

#docker pull jenkins/jenkins:latest
#docker run --name=jenkins -di -p 8084:8080 -p 50000:50000 -v /srv/jenkins:/var/jenkins_home jenkins/jenkins

cp /srv/nevsoft/setup/ShellScripts/docker-container/jenkins/jenkins /etc/init.d/jenkins
chown root:root /etc/init.d/jenkins
chmod 755 /etc/init.d/jenkins

cp /srv/nevsoft/setup/ShellScripts/docker-container/jenkins/jenkins.service /etc/systemd/system/jenkins.service
chown root:root /etc/systemd/system/jenkins.service
chmod 755 /etc/systemd/system/jenkins.service

update-rc.d jenkins defaults

systemctl daemon-reload
systemctl start jenkins.service
systemctl enable jenkins.service
