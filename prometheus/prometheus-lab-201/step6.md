Now that we have both the blackbox module and the prometheus targets configured, we can now start collecting information, right?  Well, close enough... we need to cause the services to reload their configurations first, but that is all:

`for p in 30090 30115; do curl -XPOST localhost:$p/-/reload; done`{{exec}}

### Verify Blackbox

Now lets verify the configurations are in and being properly polled in blackbox.  Click on (or refresh if already loaded) the 'Blackbox' tab in the course panel to the right.

You should see the module you created now present in the [configuration]({{TRAFFIC_HOST1_30115}}/config), for the prometheus pollers to scrape.

### Verify Prometheus

If you click on (or refresh if already loaded) the 'Prometheus' tab in the course panel to the right, navigate to the '[Targets]({{TRAFFIC_HOST1_30090}}/targets)' tab and you should see your target last result-set returned.

> **HINT**:
> We utilize Grafana to do our dashboarding which is extensible and provides rich graphics to all of the metrics that Prometheus supports:
> * [Blackbox Exporter Overview](https://grafana.com/grafana/dashboards/5345)
> * [Blackbox Exporter for Prometheus](https://grafana.com/grafana/dashboards/9965)