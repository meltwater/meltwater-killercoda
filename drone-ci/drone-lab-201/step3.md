While drone server is starting, lets take the opportunity to create a new git repo in gitea!

> **NOTE**:
> The work prior to this step is strictly to setup a working environment for drone server to utilize.  From here forward is business as usual for drone users.

1. Navigate to [gitea home]({{TRAFFIC_HOST1_30000}})
2. Under 'Repositories', Click the '+' to create a new repository

Ensure the following settings:

1. Give the repo a name (no spaces)
2. For 'Visibility' check the 'make repository private' checkbox
3. Check the 'Initialize Repository' checkbox under 'README' section
4. Click 'Create repository' button

You will be brought at this point to a repo that can be activated in drone... which should be running by the way:

```shell
kubectl get deployments
```{{exec}}

> **NOTE**: 
> You will not be able to continue till you get drone server running.  Perhaps you forgot the apply part of the last step?
> `cd ~/k8s-env && kubectl apply -f .`{{exec}}
