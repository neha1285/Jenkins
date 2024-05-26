FROM jenkins/jenkins:latest

# Create a directory for Jenkins logs
USER root
RUN mkdir -p /var/jenkins_home/logs
RUN chown -R jenkins:jenkins /var/jenkins_home/logs
USER jenkins

# Start Jenkins
CMD ["sh", "-c", "java -jar /usr/share/jenkins/jenkins.war"]

