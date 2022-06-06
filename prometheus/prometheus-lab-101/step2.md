So the next natural question (with the metrics I shared in step 1) is what is scraping?  Scraping is how prometheus gathers information for a metric (or set) into its time-series data.  This is a VERY boring process:

```
+----------+
|prometheus|
+----------+
     |
     |
+----v-----+          +--------+
|   scrape |----------> target |
|  manager |  HTTP(S) | (host) |
+----------+          +--------+
                          |
                          |
                      +---v----+
                      |service/|
                      |exporter|
                      +--------+
```

1. Prometheus is configured with a `job`
2. Job and targets is sent to scrape manager
3. Target (host) has an exposed metrics endpoing
4. Prometheus pulls the metrics via HTTP(S).
5. Prometheus writes scraped metrics (adding `job` and `instance` labels along with any other configuration-based ones)

Below is output from one such scrape target if you were to poll the metrics-endpoint using `curl`

```
$ curl localhost:9090/metrics
# HELP node_exporter_build_info A metric with a constant '1' value labeled by version, revision, branch, and goversion from which node_exporter was built.
# TYPE node_exporter_build_info gauge
node_exporter_build_info{branch="master",goversion="go1.17.2",revision="3e6f4ce627e588e9972e624f1f744c716e11b199",version="1.2.2"} 1
# HELP promhttp_metric_handler_errors_total Total number of internal errors encountered by the promhttp metric handler.
# TYPE promhttp_metric_handler_errors_total counter
promhttp_metric_handler_errors_total{cause="encoding"} 0
promhttp_metric_handler_errors_total{cause="gathering"} 0
...
```

As mentioned, once prometheus scrapes these they will have `job` and `instance` labels minimally added for each metric retrieved, then the timeseries would be stored on disk.
