docker run -d -u 0 \
  --hostname 192.168.17.3 \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume /opt/gitlab/config:/etc/gitlab:Z \
  --volume /opt/gitlab/logs:/var/log/gitlab:Z \
  --volume /opt/gitlab/data:/var/opt/gitlab:Z \
  gitlab/gitlab-ce:latest
