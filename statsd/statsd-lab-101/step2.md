## StatsD Metric Types

* Gauge[key]:[value]|g
  * `<metric name>:<value>|g`
  * A gauge will take on the arbitrary value assigned to it, and will maintain it's value until it is next set
  
* Count
  * `<metric name>:<value>|c[|@<rate>]`
  * At each flush the current count is sent and reset to 0

* Sampling
  * `sample.counter:1|c@0.1`
  * sent sampled every 1/10th of the time

* Timing[key]:[value]|ms
  * `<metric name>:<value>|ms[|@<rate>]`
  * Timers are a measure of liliseconds between the start and end of a given event

* Sets
  * Sets can be used to count the number of unique occurrences between flushes. When a metric is sent with a specific value, it will be counted as an occurrence.
  * `<metric name>:<value>|s` 
