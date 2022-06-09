While things are starting up in the background, lets cover a few of the basics about blackbox.  First, we know from our previous lesson that prometheus is a poll-based monitoring system that scrapes endpoints called targets for the metrics it is going to collect, so how does blackbox fit in?

Blackbox acts much like a proxy running a test on a given target, yet instead of returning the result, it tells prometheus a story about the result it received.  The graphic below gives a visual representation of this polling framework:

```text
+----------+      +----------+      +---------+
|Prometheus|      | Blackbox |      | Server1 |
+----+-----+      +-----+----+      +----+----+
     |                  |                |
     |  target=server1  |                |
     +------------------>                |
     |  module=http_2xx |                |
     |                  | http://server1 |
     |                  +---------------->
     |                  |                |
     |                  |   http_result  |
     |                  <------------------+
     |                  |                |
     |   scrape_result  |                |
     <------------------+                |
     |                  |                |
     +                  +                +
```{{}}
