### Drone's Goals

 * One solution for both CI & CD
 * Easy management of build environment (#docker)
 * Familiar pipeline syntax (#docker-compose superset)
 * Isolated build steps (run in any container you want/build)
 * Lots of plugins (both marketplace and private)
 * Multiple pipelines and parallel processing
 * Build-time Services (Redis, Elasticsearch, MySQL, Mongo, Selenium, etc)
 * Common Workspace
 * Workspace Caching [#drone-cache](https://github.com/meltwater/drone-cache)

### Drone CLI Install

For this class, we will be installing v1.x of the code-base, so lets get that installed and ready:

`curl -L https://github.com/drone/drone-cli/releases/download/v1.2.0/drone_linux_amd64.tar.gz | tar zx && sudo install -t /usr/local/bin drone`{{execute CLIENT}}

**NOTE**: Steps for your OS can be found [here](https://docs.drone.io/cli/install/).
