ssh root@host01 "curl -L https://github.com/harness/drone-cli/releases/download/v1.5.0/drone_linux_amd64.tar.gz | tar zx && sudo install -t /usr/local/bin drone"
ssh root@host01 "cd /class && docker-compose up -d"
ssh root@host01 "docker pull philipharries/html_tidy"
ssh root@host01 "docker pull docker"
