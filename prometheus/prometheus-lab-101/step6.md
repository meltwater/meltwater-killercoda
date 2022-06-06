With the containers launched, Prometheus will scrape and store the data based on the internals in the configuration.

## Dashboards

The default Prometheus Dashboard reports internal information and provides a way to debug the metrics being collected. The dashboard can be viewed [here]({{TRAFFIC_HOST1_9090}})

The dashboard will report the status of the scraping and the different targets at via the [/targets]({{TRAFFIC_HOST1_9090}}/targets) page.

## Query Prometheus

To query the underlying metrics and create graphs, visit the graph page on the Dashboard at {{TRAFFIC_HOST1_9090}}/graph

From here different metrics are queryable based on their name.

For example, querying for `node_network_receive_bytes_total`{{copy}} will show how active the disk IO is. Querying using `node_cpu_seconds_total`{{copy}} will output the Docker Hosts CPU information.

All the metrics scraped from [the metrics endpoint]({{TRAFFIC_HOST1_9100}}/metrics) are viewable.
