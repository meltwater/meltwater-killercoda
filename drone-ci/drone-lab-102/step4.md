### Docker Push

Since we already have the build step in-place from the previous step, all that remains is changing the event type from mimicking a `pull_request`{{}} to a `push`{{}}.  Now, when you are in a git repo and using the UI, these types of events are sent automatically to drone server, but all of this can be mimicked and tested locally before even pushing into a real git repo (Will cover in future courses).

> **HINT**: 
> Because we have made use of variables in the pipeline, triggering off of them to perform different tasks is as simple as changing the event in the runtime to see how it behaves.

```shell
cd ~/class && \
drone exec \
  --trusted \
  --repo class \
  --branch master \
  --pipeline class \
  --secret-file secrets.txt \
  --event push && \
echo success || echo failed with $?
```{{exec}}

Looking at the output, you should now see that there are `docker-push`{{}} steps where once were `docker-pull_request`{{}}, this will also push the docker image to the repo because the `DRONE_EVENT`{{}} variable would now match the event change we are testing out.
