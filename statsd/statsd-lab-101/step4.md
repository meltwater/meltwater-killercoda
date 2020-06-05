## Test by sending some stats

Let's send some stats with a random counter to prove things are working.

* `echo -n "example:$((RANDOM % 100))|c" | nc -w 1 -u 127.0.0.1 8125`{{execute}}

And you can visualize the data visiting [dashboard](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/dashboard)

Select `stats.statsd.metrics_recieved` in the dashboard to view the data point.
