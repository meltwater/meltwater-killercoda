The prometheus side of the blackbox test now only has to concern itself with rewriting destinations of the explicit `target`.  This is a fairly common override in prometheus allowing you to maintain centralized exporters for things like databases and other query-dependent services in their own infrastructure.

Paste the following code as an additional `scrape_config:` for the service to poll within the `prometheus.yml` file using the editor:

```
  - job_name: 'employee-api'
    metrics_path: /probe
    params:
      module: [api_employee]
    static_configs:
      - targets:
        - http://dummy.restapiexample.com/api/v1/employees
        - http://dummy.restapiexample.com/api/v1/employee/1
    relabel_configs:
      - source_labels: [__address__]
        target_label: __param_target
      - source_labels: [__param_target]
        target_label: instance
      - target_label: __address__
        replacement: blackbox:9115
```{{copy}}

> **EXTRA**:
> To briefly explain the `relabel_configs` segment for anyone unfamiliar with it:
> * `__address__`: This is the specific statically configured target of the test sequence you are running.
> * `__param_target`: Is a target parameter passed by reference in the URL query (Ex: `host/path?target=something`)

What we are accomplishing here is to pass the `target` on to the standard exporter in a way that will cause it to proxy the request made to a far-end scrape point through a known service.