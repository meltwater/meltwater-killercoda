Last step, with blackbox ought to be to load some type of meaningful graph so that we can show our ability to monitor what we just did, so lets do that.

* https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/new/graph?g0.expr=probe_success%7Bjob%3D%27employee-api%27%7D&g0.tab=0&g0.stacked=0&g0.range_input=1h

### What You Observed

> Perhaps this was mean, but I stuck an extra target in there which is purposefully failing so you can mess around with the queries.  The one that should be working in all this is the API call (or instance in this case) ending with `api/v1/employees`.  The thought here was to give you one that you could see working in all respects and one that is not.  
>
> * **CHALLENGE**: Why not go back and try manipulating the module checks to work with both endpoints since I mean, we are dealing with the same API segment.
>
> You should see a few lines that are on your screen and able to show visibility of the metric with all of the excruciating detail.  This is because while the graphs will aggregate the data, they are aggregating the detail, so you can ALWAYS drill in and see the full detail of the time-frame.  You can also affect the resolution however you like so that you see all the detail.

**HINT**: Almost every metric has some type of an `up` endpoint indicating a successful run / scrape / response from the scraped service.  In the example of blackbox, the `probe_success` metric shows that the probe not only scraped properly on blackbox, but also got the expected response from it.  Since these are either `1` or `0`, they work great as a multiplier on other statistics so that you are only checking for instance timing on stuff that is up (this can save on multiple alerts for a common issue)

**EXTRA**: While prometheus provides an ok UI for diagnosing the service itself, the graphing capabilities of [Grafana](grafana.com) far surpass the capabilities of this simplistic UI.  If you are running v6 and above, there is even a similar exploration toolkit available to users through the 'Explore' tab / navigation feature.
