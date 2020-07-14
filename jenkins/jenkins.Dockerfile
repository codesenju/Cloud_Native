FROM jenkinsci/blueocean
LABEL maintainer="codesenju@gmail.com"

# Install plugins on startup
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

EXPOSE 8080
