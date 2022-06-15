### Exec Environment

This is the first action for a pipeline.  In the drone UI these variables are stored by drone-server's secrets manager.  In the local exec environment you will have to define them prior to a run (which gives you flexibility to test them all to the fullest).

To set up the secret we will use in the, using the Killercoda editor tab please open the `~/secrets.txt`{{}} file first and add something similar to the content below for the `something_private`{{}} secret:

```text
something_private='This is something VERY private to be protected!'
```{{copy}}

> **HINT**: 
> This is nothing more than an equal-separated key=value list / flat-file.

### Pipeline Execution

Now that we have configured the environment variables, lets run the pipeline so you can see what typical output looks like in a working scenario.  

```shell
cd ~/class && \
drone exec \
  --repo someones/class \
  --branch master \
  --event push \
  --secret-file secrets.txt \
  --pipeline example
```{{exec}}

> **HINT**: 
> You can override ANYthing available to you inside drone-server within the options, environment, and secrets files to match the particular event and function you want to test.

You should see output in the run in the terminal window to the right...

```
[myEnvironment:0] + apk add --no-cache tree
[myEnvironment:1] (1/1) Installing tree (1.8.0-r0)
[myEnvironment:2] Executing busybox-1.30.1-r5.trigger
[myEnvironment:3] OK: 6 MiB in 15 packages
#      ^       ^ 
#      |       | 
#      |       +----- Output line numbering (like GUI)
#      +------------- Named pipeline step being executed
```

> **NOTICE**: 
> Take a look at the resultant lines, you should see the `SOMETHING_PRIVATE` value was even protected by drone from display through something like echoing out the environment in which it was stored.

> **NOTICE**: 
> All the environment variables you can utilize to determine status at any step of a pipeline, there is a full list [here](https://docs.drone.io/pipeline/environment/reference/)
