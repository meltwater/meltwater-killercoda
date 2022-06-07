With both services operational, Prometheus is already scraping (and storing) based on the configuration you provided in `/course/prometheus.yml`.

**Prometheus Internals**

While typically prometheus would be placed behind a dashboarding package like [Grafana](https://grafana.com), it does have a functional [expression browser]({{TRAFFIC_HOST1_9090}}) available at its root landing page on current builds.

The status page of prometheus [/status]({{TRAFFIC_HOST1_9090}}/status) shows build and runtime information for the service itself.

Next is [/targets]({{TRAFFIC_HOST1_9090}}/targets) which will provide invaluable information on your targets and the labels imported from the same.  **WARNING**: Do not load this page in an environment with thousands of targets will likely timeout anyway.

Next is [/tsdb-status]({{TRAFFIC_HOST1_9090}}/tsdb-status) which will provide information about OpenTSDB (Time series database beneath prometheus) and its runtime health.

Finally is [/config]({{TRAFFIC_HOST1_9090}}/config) which provides a sneak-peak of your runtime configuration.  This is especially useful when trying to see what the active scrape rules are on the scrape manager.  If you don't see what you are expecting, try restarting the service:

```
docker restart prometheus-server
```{{exec}}

**EXTRA CREDIT**: There is also a configurable reload endpoint for CD support.
