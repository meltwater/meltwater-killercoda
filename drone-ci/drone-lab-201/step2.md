Edit the `~/k8s-env/drone-server.yaml` file in this environment and add the following code:

> **NOTE**:
> I know most of you are probably wondering why I did't just create this to start with?  Well, at the time of this courses creation, we could not pre-populate the host configurations with the values required for this to work, and it gives you ability to add your super-secret information generated from the last step :-)

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: drone
  labels:
    app: drone
spec:
  replicas: 1
  revisionHistoryLimit: 1
  selector:
    matchLabels:
      app: drone
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 0
      maxSurge: 1
  template:
    metadata:
      labels:
        app: drone
    spec:
      containers:
        - name: drone
          image: drone/drone:2.12
          env:
            - name: DRONE_HTTP_SSL_HOST
              value: {{TRAFFIC_HOST1_30080}}
            - name: DRONE_RPC_SECRET
              value: 96cc18d386b514b225f6396605aa44a4
            - name: DRONE_USER_CREATE
              value: "username:root,machine:false,admin:true,token:e24b66bb9ffd7e34cf4d4aad4bdf758d"
            - name: DRONE_SERVER_HOST
              value: {{TRAFFIC_HOST1_30080}}
            - name: DRONE_SERVER_PROTO
              value: https
            - name: DRONE_GITEA_SERVER
              value: {{TRAFFIC_HOST1_30000}}
            - name: DRONE_GITEA_CLIENT_ID
              value: ________REPLACE_WITH_ID_FROM_STEP_1________
            - name: DRONE_GITEA_CLIENT_SECRET
              value: ________REPLACE_WITH_SECRET_FROM_STEP_1________
          resources:
            requests:
              memory: "128Mi"
              cpu: "100m"
          livenessProbe:
            httpGet:
              path: /healthz
              port: drone-http
          ports:
            - name: drone-http
              containerPort: 80
            - name: drone-rpc
              containerPort: 9000
```{{copy}}

> **REMINDER**:
> Did you make sure you added your 'Client ID' and 'Client Secret' from the previous step?

Once you have the above safely in the placeholder file, run the following:

```shell
cd ~/k8s-env && kubectl apply -f .
```{{exec}}