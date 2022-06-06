The Prometheus server requires a configuration file `prometheus.yml` that defines the defaults for the scrape manager and service as well as the individual jobs themselves.  The first half of the configuration defines the defaults:

```
global:
  scrape_interval:     15s
  evaluation_interval: 15s
```{{copy}}

The second half defines the targets and ports that Prometheus should scrape data from. In this example, we have defined two targets running on different ports.

```yaml
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets:
          - '127.0.0.1:9090' # Prometheus Server
          - '127.0.0.1:9100' # Node-Exporter
        labels:
          app: 'prometheus'
```{{copy}}

Please place the above segments (in their respective order) into the `prometheus.yml` file using the 'Editor' tab in this scenario and save.
