# LinuxServer - Setup

Do the following Steps to setup a Debian-Linux-Server in extension add Docker-Containers for each Database-Instance

- 1: Setup the Linux-Debian Base Installation (for example in a virtual Machine)
- 2: Run the Commands listed in "/ShellScripts/system/install.sh" to setup Git
- 3: Set root permissions recursive for the checked out folder /srv/nevsoft/setup
- 4: Change to directory /srv/nevsoft/setup and run setup.sh
- 5: Download oracle-xe-11.2.0-1.0.x86_64.rpm and put it to the path shown in .gitignore
- 6: Setup the OracleXE-Docker-Container -> /srv/nevsoft/setup/ShellScripts/docker-container/oracle-xe/install.sh
