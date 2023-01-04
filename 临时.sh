nohup java -DJENKINS_HOME=/var/lib/jenkins \
    -jar /usr/local/src/jenkins-2.319.3-lts.war \
    --logfile=/var/log/jenkins/jenkins.log \
    --httpPort=8080 >/dev/null 2>&1 &











git config --global -add safe.directory xxxx

