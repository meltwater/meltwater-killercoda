So lets see how blackbox works to test endpoints using basic HTTP requests prior to testing for actual api content.  To do so we will be shifting around a bit between the UI and this page.

If you click on the 'Blackbox' tab by the terminal, that should at this point load the blackbox UI, if not, you may just have to wait a second or two for the docker images to finish downloading (You can watch that in the terminal `watch -n2 docker ps -a`{{execute CLIENT}})

This page will load up a view of blackbox that allows for some debug activities with modules and tests run against the service.  Click the linik for example to run a test agaisnt 'prometheus.io' and you will see sample output.

We can run the same tests against our employee api, check this out:

* https://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com/probe?target=dummy.restapiexample.com%2Fapi%2Fv1%2Femployees&module=http_2xx&debug=true

What you see in the output is the full debug of the request as well as the metrics that are saved into prometheus for query.  However, while this check does show the power of the metrics obtained, since the service sits behind a loadbalancer it does not necessarily check the output for a filtered specific value returned.

So next we will take what we have learned about blackbox and build a module inside blackbox to run a test against the employee endpoints for our REST API.