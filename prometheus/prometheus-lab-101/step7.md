Prometheus provides a function-based query language called PromQL that allows the user to select and aggregate timeseries data in real time.

## Language Data Types

* **Instant Vector** - a set of time series containing a single sample for each time series, all sharing the same timestamp
* **Range Vector** - a set of time series containing a range of data points over time for each time series
* **Scalar** - a simple numeric floating point value
* **String** - a simple string value; currently unused

**Some Queries To Try**

Try a few sample PromQL queries for yourself:

First open the [expression browser]({{TRAFFIC_HOST1_9090}}) (**NOTE**: hold down command / alt to open in new tab)

* `prometheus_build_info`{{copy}} will show the build information for prometheus inside the labels of this metric
* `count by (__name__)({job="prometheus"})`{{copy}} will show a listing of metrics with a count of timeseries for each, should you forget what is available
* `rate(prometheus_http_requests_total{code="200"}[1m])`{{copy}} will show the per-minute rate of use for each path using the rate function
* `100 - ((node_filesystem_avail_bytes{device!~'rootfs'} * 100) / node_filesystem_size_bytes{device!~'rootfs'})`{{copy}} will show the percentage of disk usage from node-exporter exposed volumes by doing some math

**EXTRA CREDIT**: Try some of the other [metrics we exposed with node-exporter]({{TRAFFIC_HOST1_9100}}/metrics) which are all visible and sortable

**EXTRA CREDIT**: Looking for more?  Take some time to checkout [querying basics](https://prometheus.io/docs/prometheus/latest/querying/basics/)