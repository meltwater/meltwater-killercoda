Before we get into building out prometheus and all the fun stuff, lets go through some basics.  First, we mentioned in the intro that prometheus stores time-series data, what makes up a timeseries?

* [ ] A. Metric Name
* [ ] B. Date/Time
* [ ] C. Value
* [ ] D. Tags / Labels
* [ ] E. Origin
* [ ] F. Type

<details>
  <summary>Answer</summary>
  <p><b>A, B, C, D, F</b></p>
</details>

In Prometheus, a timeseries (minimally) involves the metric, and the following labels (job and instance).  With these there is creation of a few standard metrics that are available to help with troubleshooting the service:

* `up{job="<job-name>", instance="<instance-id>"}`{{copy}}: `1`{{}} if the instance is healthy, i.e. reachable, or `0`{{}} if the scrape failed.
* `scrape_duration_seconds{job="<job-name>", instance="<instance-id>"}`{{copy}}: duration of the scrape.
* `scrape_samples_post_metric_relabeling{job="<job-name>", instance="<instance-id>"}`{{copy}}: the number of samples remaining after metric relabeling was applied.
* `scrape_samples_scraped{job="<job-name>", instance="<instance-id>"}`{{copy}}: the number of samples the target exposed.
* `scrape_series_added{job="<job-name>", instance="<instance-id>"}`{{copy}}: the approximate number of new series in this scrape. New in v2.10