Prometheus can run as a Docker Container with a UI available on port _9090_. Prometheus uses the configuration to scrape the targets, collect and store the metrics before making them available via API that allows dashboards, graphing and alerting.

## Task

The following command launches the container with the prometheus configuration.

```
docker run -d --net=host \
    -v `pwd`/prometheus.yml:/etc/prometheus/prometheus.yml \
    --name prometheus-server \
    prom/prometheus:v2.6.1
```{{execute}}

Once started, the [dashboard](https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/) is viewable. The next steps will explain the details and how to view the data.
