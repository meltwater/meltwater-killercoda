### Cloning

Right after loading the environmentals, drone-server will need to obtain the code!  At the moment you don't see it because we are using the local-exec environment of drone, which means this activity is skipped.  When using the drone UI (Cloud or private install), the code is not presently in the local directory you are running drone in, so it has to be downloaded from one of the [supported source control systems](https://docs.drone.io/installation/providers/).

* Typically the first visible 'step' in a pipeline once shifted away from local execution environment.
* Basically copies the last 50 (by default) changes from your code repo with a [shallow clone](https://linuxhint.com/git-shallow-clone-and-clone-depth/)
* Generally the defaults here are more than adequate, [here's the doc](https://docker-runner.docs.drone.io/configuration/cloning/) that shows all the options available

### Services

The `services` block allows you to define databases, lists, and other solutions that are available to your pipeline in all of the steps executed.  Can be SUPER useful if your code needs to make external connections for testing or other transferring information between steps where local files would otherwise be inefficient.

* Long-running processes available by name throughout your pipelines execution
* Useful in parallel / group processing and testing environments
* Examples of SOME:
  * MySQL
  * PostgreSQL
  * Elasticsearch
  * RabbitMQ
  * Redis
  * `___________`
