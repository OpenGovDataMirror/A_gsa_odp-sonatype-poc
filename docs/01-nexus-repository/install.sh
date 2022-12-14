#!/bin/bash

# This runbook installs Nexus Repository
# It is based on the installation guide https://guides.sonatype.com/repo3/quick-start-guides/proxying-maven-and-npm/
#
# SSH Command
    # ssh -i ~/ec2-pem/ociso-sanhe-dev.pem ec2-user@ec2-52-90-31-163.compute-1.amazonaws.com


# 0. Install Dependencies
# 0.1 Install Java
sudo yum install java-1.8.0-openjdk

# set JAVA_HOME
ls /usr/lib/jvm/ | grep java- # make sure the JDK installed
export JAVA_HOME="/usr/lib/jvm/$(ls /usr/lib/jvm/ | grep java-)/jre"

# add JAVA_HOME to PATH
echo $JAVA_HOME
export PATH="$JAVA_HOME/bin:$PATH"

# validate installation
java -version

# 0.2 Install Maven: https://maven.apache.org/download.cgi
cd ~
wget https://ftp.wayne.edu/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar xzvf apache-maven-3.6.3-bin.tar.gz
export PATH="${HOME}/apache-maven-3.6.3/bin:$PATH"

# validate installation
mvn -v

# 0.3 Install Node.js and npm: https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh # activate nvm
nvm install node # install latest node.js

# validate installation
npm -h

# Part 1 - Installing and Starting Nexus Repository Manager 3
# 1.1 Create an installation directory in your desired location. https://support.sonatype.com/hc/en-us/articles/231742807?&_ga=2.11767092.16295913.1600975700-1496676698.1600975700#InstallDir
mkdir ~/nexus
cd ~/nexus

# 1.2. Download the most recent repository manager for your operating system. https://help.sonatype.com/repomanager3/download?_ga=2.45648164.16295913.1600975700-1496676698.1600975700
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar xzvf latest-unix.tar.gz

# 1.3 run the startup script launching the repository manager Wait until the log shows the message “Started Sonatype Nexus.
~/nexus/"$(ls ~/nexus | grep nexus)"/bin/nexus run
