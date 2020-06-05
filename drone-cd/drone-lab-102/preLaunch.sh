ssh root@host01 "curl -L https://github.com/drone/drone-cli/releases/download/v1.2.0/drone_linux_amd64.tar.gz | tar zx && sudo install -t /usr/local/bin drone"
ssh root@host01 "docker-compose up -d"
ssh root@host01 "docker pull philipharries/html_tidy:latest"
ssh root@host01 "docker pull docker:19.03"
