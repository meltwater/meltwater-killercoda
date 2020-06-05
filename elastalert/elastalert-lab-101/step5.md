Now let's stop the heartbeat process and watch our alert trigger.

```
docker-compose stop heartbeat
```{{execute T1}}

You should have two terminal tabs now, click "Terminal 2" to watch the output
from ElastAlert.

Within 10 seconds you should see output similar to:
```
INFO:elastalert:Flatline Example

An abnormally low number of events occurred around 2019-12-04 22:38 UTC.
Between 2019-12-04 22:38 UTC and 2019-12-04 22:38 UTC, there were less than 5 events.

@timestamp: 2019-12-04T22:38:48.788164Z
count: 3
key: all
num_hits: 7
num_matches: 1
```
