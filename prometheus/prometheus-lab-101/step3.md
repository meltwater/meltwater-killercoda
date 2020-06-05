To collect metrics related to a node it's required to run a Prometheus Node Exporter. Prometheus has many exporters that are designed to output metrics for a particular system, such as Postgres or MySQL.

## Task

Launch the Node Exporter container.

```
docker run -d \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:v0.18.1 \
    --path.rootfs /host
```{{execute}}

If you're interested in seeing the raw metrics, they can be viewed with `curl localhost:9100/metrics`{{execute}}
