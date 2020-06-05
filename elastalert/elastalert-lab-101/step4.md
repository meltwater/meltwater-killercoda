Start elastalert:
```
elastalert --config config.yml --debug --rule example_flatline.yml
```{{execute T2}}

You should see output similar to:
```
INFO:elastalert:Ran Flatline Example from 2019-12-04 22:20 UTC to 2019-12-04 22:21 UTC: 11 query hits (0 already seen), 0 matches, 0 alerts sent
INFO:elastalert:Sleeping for 9.824992 seconds
```

Since the heartbeat process is writing more than 5 documents that match our
query every 30 seconds, no alert is triggered.

