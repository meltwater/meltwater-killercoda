With both services operational, Prometheus is already scraping (and storing) based on the configuration you provided in `prometheus.yml`.

## Prometheus Internals

The status page of prometheus [/status]({{TRAFFIC_HOST1_9090}}/status) shows build and runtime information for the service itself.

Next is [/targets]({{TRAFFIC_HOST1_9090}}/targets) which will provide invaluable information on your targets and the labels imported from the same.  **WARNING**: Do not load this page in an environment with thousands of targets will likely timeout anyway.

Next is [/tsdb-status]({{TRAFFIC_HOST1_9090}}/tsdb-status) which will provide information about OpenTSDB (Time series database beneath prometheus) and its runtime health.

Finally is [/config]({{TRAFFIC_HOST1_9090}}/config) which provides a sneak-peak of your runtime configuration.  This is especially useful when trying to see what the active scrape rules are on the scrape manager.  If you don't see what you are expecting, try restarting the service:

```
docker restart prometheus-server
```{{exec}}

## Prometheus Query

The root page of prometheus [here]({{TRAFFIC_HOST1_9090}}) shows a query editor that provides an auto-complete experience local to the instance.  It can be SUPER useful in diagnosing issues in an HA environment.

Try a few sample PromQL queries for yourself:

* `prometheus_build_info`{{copy}} will show the build information for prometheus.
* `rate(prometheus_http_requests_total{code="200"}[1m])`{copy} will show the per-minute rate of use for each path.

Try some of the other [metrics we exposed with node-exporter]({{TRAFFIC_HOST1_9100}}/metrics) which are all visible and sortable.
