### Package in Docker

If you are curious, there are [lots of other courses about docker](https://www.katacoda.com/search?q=docker).  For now I have included a `Dockerfile` as part of the provided code that will build a static website out of the HTML file you edited/created in step 1 (Feel free to take a look at it if you like).

What we are going to concentrate on is the steps needed to build and push the container to a registry (Popular ones include [Quay](https://quay.io), [Docker Hub](https://hub.docker.com), [BinTray](https://bintray.com), and more).  We will be using a registry running inside Katacoda today, but the process is the same.

The following is the drone pipeline `step`, a pipeline can have multiple steps and a configuration file can have multiple pipelines.  Copy the code below and place it into the steps level of the `class` pipeline in `/class/.drone.yml`.  Specifically, you will want to include this after the `code-validation` step from before:

<pre class="file" data-target="clipboard">
- name: docker-${DRONE_EVENT}
  image: docker:19.03
  when:
    event: [ push, pull_request ]
    status: [ success ]
  environment:
    DOCKER_PASSWORD:
      from_secret: docker_password
  commands:
    - echo $DOCKER_PASSWORD | docker login --username testuser --password-stdin localhost
    - docker build -t localhost/demo-web:latest .
    - if [ "${DRONE_EVENT}" == "push" ]; then docker push localhost/demo-web:latest; fi;
  volumes:
    - name: docker-socket
      path: /var/run/docker.sock
</pre>

**NOTICE**: I have added a `from_secret` phrase, while running exec mode you will have to add the secrets to a flat-file, in drone-server these secrets are stored in drone but as you can see not exported as output to the screen

**HINT**: There are a bunch of `$DRONE_` [environment variables](https://docker-runner.docs.drone.io/configuration/environment/variables/) you can use throughout your pipelines to help minimize code duplication.

### Testing Docker Build

Right, so you tested your code was valid, but since we are creating an artifact, it is best to make sure you didn't botch something there too.  In the step above, you will notice that the third `command` is limited to a `push` event, so there is no permanent change if we do all of the other stuff as a test.  This can help ensure your PR's have been checked to the point of pushing he new code.

`cd /class \
&& drone exec --trusted \
              --repo class \
              --branch master \
              --pipeline class \
              --secret-file secrets.txt \
              --event pull_request \
&& echo success || echo failed with $?`{{execute CLIENT}}
