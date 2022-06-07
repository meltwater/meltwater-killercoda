With your configuration saved, we will run Prometheus using docker.  Once loaded, Prometheus will start scraping using the configurations added in the previous step.

Ensure you are on the 'Tab1' or 'Terminal Window' and click to execute the following command:

```
docker run -d --net=host \
    -v /course/prometheus.yml:/etc/prometheus/prometheus.yml \
    --name prometheus-server \
    prom/prometheus:v2.33.5
```{{exec}}

Once the service has loaded, the [Prometheus Web UI]({{TRAFFIC_HOST1_9090}}) is viewable. The ensuing steps will explain the how to view and interpret the data prometheus is collecting.

You should be able to run the following query in the [Prometheus Web UI]({{TRAFFIC_HOST1_9090}}):

```
up{job="prometheus"}
```{{copy}}

**NOTE**: We will be checking for a running prometheus instance before you are allowed to continue.