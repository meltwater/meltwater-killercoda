### Drone's Goals

 * One solution for both CI & CD
 * Easy management of build environment (#docker)
 * Familiar pipeline syntax (#docker-compose superset)
 * Isolated build steps (run in any container you want/build)
 * Lots of plugins (both marketplace and private)
 * Multiple pipelines and parallel processing
 * Build-time Services (Redis, Elasticsearch, MySQL, Mongo, Selenium, etc)
 * Common Workspace passed through each step
 * Workspace Caching [#drone-cache](https://github.com/meltwater/drone-cache)
 * Actions Based on Repo Structure [#drone-convert-pathschanged](https://github.com/meltwater/drone-convert-pathschanged)

### Drone CLI Install

For this scenario, we will be installing v1.x of the CLI which supports both local-exec and interactivity with drone server v2.x, so lets get that installed and ready:

`curl -L https://github.com/harness/drone-cli/releases/download/v1.5.0/drone_linux_amd64.tar.gz | tar zx && sudo install -t /usr/local/bin drone` (Copy this code)

**NOTE**: Steps for your OS can be found [here](https://docs.drone.io/cli/install/).
