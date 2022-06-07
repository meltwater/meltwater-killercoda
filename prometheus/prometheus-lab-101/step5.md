Next we will try to add some additional metrics to our sample scrape job.  in 'Tab1' or the 'Terminal Window', try running the following:

```
docker run -d --net="host" --pid="host" \
  -v "/:/host:ro,rslave" \
  --name node-exporter \
  quay.io/prometheus/node-exporter:v1.3.1 \
    --path.rootfs /host
```{{exec}}

> **NOTE**: 
> If you're interested in seeing any of the metrics from the perspective of the prometheus scrape manager, they should be visible with `curl localhost:9100/metrics`{{exec}}

> **HINT**: 
> If you haven't guessed it already, `curl` makes a FANTASTIC troubleshooting tool for obtainment of prometheus metrics, as they will NEED to be available to from the host you start the server on.

> **NOTE**: 
> We will be checking for a running prometheus instance before you are allowed to continue.