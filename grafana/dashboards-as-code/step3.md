A Grafana playground with prometheus datasource is running in background, which is where you will be creating a new dashboard using Grafanalib, to verify Grafana instance is up and running, run the below command in the terminal

```
docker ps
```{{exec}}

It may take couple of minutes for the docker containers to become active.
You will see that Grafana version 9.4.3 docker conatiner is running along with few other conatiners.


Now, verify if you can access grafana UI by clicking the below link
[Grafana UI]({{TRAFFIC_HOST1_3001}})


Log in with user `admin` and password `admin`.

Google Chrome may suggest you to change the Password, hit skip and you will be taken to Grafana home page.

Navigate to Explore mode on the lefthand navigation bar, choose gdev-prometheus as data source and query an example metric such as counters_logins. If it shows data, you are ready to use grafana instance to add dashboard using Grafanalib.
