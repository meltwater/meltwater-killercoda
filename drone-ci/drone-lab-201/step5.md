Add a new file to your newly activated repository in [gitea]({{TRAFFIC_HOST1_30000}}) called `.drone.yml`{{}} (**NOTE**: This is `yml`{{}} not `yaml`{{}} for the extension).  This file will house all your pipeline code for drone to interact with.  So we have something to view of our pipeline run based on a commit (push event), add the following content to the file:

> **NOTE**:
> Make sure you utilize the browser interface for [gitea]({{TRAFFIC_HOST1_30000}}) to create and mannipulate your repository, full CLI access with git locally will not work.

```yaml
kind: pipeline
type: kubernetes
name: default

# Local repo cloning is not possible in this demo
clone:
  disable: true

steps:
  - name: environment
    image: alpine:3
    commands:
      - env | sort
    when:
      event:
        - push
```{{copy}}

Assuming you have clicked 'Commit Changes' on the default branch for the repo, drone should already be working (or likely done), lets check it out...

