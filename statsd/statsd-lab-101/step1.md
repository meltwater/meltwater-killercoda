## Our monitoring stack

We will be using StatsD for telemetry, and Graphite as our data source.

[StatsD](https://github.com/etsy/statsd) was created by Etsy.
StatsD is a front-end proxy for the Graphite/ Carbon metrics server. It's a background process that listens for messages on a UDP port, which it then parses / aggregates and, in this case, passes on to Graphite.

[Graphite](http://graphiteapp.org/) is the next layer of the stack. Graphite is composed of Carbon, Whisper and Graphite-Web. Carbon listens for the time-series data(from StatsD), Whisper stores the data and Graphite-Web is the API for rending graphs and Visualizations, and has its own UI for creating them.

Your App sends data to StatsD by UDP port 8125 and StatsD sends data to Graphite/ Carbon by TCP port 2003.