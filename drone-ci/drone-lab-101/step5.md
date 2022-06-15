### Steps
Drone pipelines (regardless of the runner selected) are built on `steps` that the solution will iterate through.  Our example pipeline had just a single step which provided output from multiple commands (if you took time to look at the `.drone.yml` file that is :-))

* Step [conditions](https://docs.drone.io/pipeline/docker/syntax/conditions/) can be used to either inclusively or exclusively run the code segment based on branch, status, event, and more.
* Steps can be re-used and triggered with alternate environment variables through use of yaml anchors
* Steps can be run in in parallel through use of [`depends_on`](https://docs.drone.io/pipeline/docker/syntax/parallelism/) clauses to control the full sequencing of the pipeline.
* Each pipeline has some pre-set [environment variables](https://docs.drone.io/pipeline/environment/reference/)  which can be used to augment scripting at each step

> **HINT**: 
> If you choose to utilize parallelism, be sure you define a depnds_on block for each and every step defined, the first step depending on the invisible `clone` step.

### Exit Status
So a 'successful' run will exit with a `0` status based on what you told your commands to do.  Any other exit code will result in a `failed` step.

* Exit codes can help you to determine precisely where your step code errored out.
* Exit codes are essential in determining success or failure of a pipeline and its flow.

Try executing the previous pipeline with a success/failure test at the end:

```shell
drone exec \
  --repo someones/class \
  --branch master \
  --event push \
  --secret-file secrets.txt \
  --pipeline example \
  && echo success || echo failed with $?
```{{exec}}

> **HINT**: 
> You can use [exit-codes in any linux-based system](https://shapeshed.com/unix-exit-codes/) to determine success/failure of a command and why.

> **HINT**: 
> In the drone web UI, a green checkmark is the same thing as a zero exit code on the CLI, a success!
