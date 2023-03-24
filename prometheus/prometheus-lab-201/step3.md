So lets see how blackbox works to test endpoints using basic HTTP requests prior to testing for actual api content.  To do so we will be shifting around a bit between the UI and this page.

### Prometheus.io

> If you click on the 'Blackbox' tab by the terminal, that should at this point load the blackbox UI, if not, you may just have to wait a second or two for the docker images to finish downloading (You can watch that in the terminal `timeout 2m watch -n2 kubectl get deployments`{{exec}}).  
>
> This page will load up a view of blackbox that allows for some debug activities with modules and last several tests run against the service.  Click the '[Probe prometheus.io for http_2xx]({{TRAFFIC_HOST1_30115}}/probe?target=prometheus.io&module=http_2xx)' for example to run a default status-check test against 'prometheus.io' and you will see sample output of what prometheus then scrapes.

### Employee API

> Lets test this out on our own API from the last step so that we can see how it works.  Since it is a basic HTTP test, we can use the same module against our employee api and since it is looking for a 2xx status code response, it should succeed.  Check this out:
>
> * {{TRAFFIC_HOST1_30115}}/probe?target=httpbin.org%2Fgit&module=http_2xx&debug=true
>
> What you see in the output is the full debug of the request as well as the metrics that are saved into prometheus for query.  However, while this check does show the power of the metrics obtained, since the service sits behind a loadbalancer it does not necessarily check the output for a filtered specific value returned.

So next we will take what we have learned about blackbox and build a module inside blackbox to run a test against the employee endpoints for our REST API.
