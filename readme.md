***
  
## # LinuxServer - Setup

Do the following Steps to setup a Debian-Linux-Server in extension add Docker-Containers for each Database-Instance

- Setup the Linux-Debian Base Installation (for example in a virtual Machine)
- Run the Commands listed in "/ShellScripts/system/install.sh" to setup Git
- Set root permissions recursive for the checked out folder /srv/nevsoft/setup
- Change to directory /srv/nevsoft/setup and run setup.sh
- Download oracle-xe-11.2.0-1.0.x86_64.rpm and put it to the path shown in .gitignore
- Setup the OracleXE-Docker-Container -> /srv/nevsoft/setup/ShellScripts/docker-container/oracle-xe/install.sh
  
***
  
## # Coming soon
To extend the LinuxServer for the NevSuite-Samples i will add the following list of Docker-Images.  
This will complete the production environment to run the NevSuite-Samples.  
  
- Docker Image for MongoDB
- Docker Image for GlassFish4-Application-Server
  
***
