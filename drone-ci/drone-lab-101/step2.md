### Drone vs Other Tools

* Every pipeline step is run in a docker container... ANY container
* GitHub/BitBucket organization awareness (privileges for your repos only)
* Ability to restrict secret visibility within a pipeline to certain event types
* Ease of setup / administration (It's a docker solution that runs docker?)
* Local pipeline execution (That's right, you can test your pipeline locally)
* Commitment to backwards compatibility and support of older pipeline configs.

#### Easy to Extend

In addition to these, here are just some of the ways you are free to extend this toolset.

* Entire infrastructure can be defined as code using ([Terraform](https://terraform.io))
* Role-based authentication to runtime environments (No stored user credentials)
* Private repos are automatically trusted and given privileged mode access
* Virtually limitless build agents that autoscale within 20sec
* Optional workspace caching for your environment ([#drone-cache](https://github.com/meltwater/drone-cache))
* Pipeline & Step filtering by paths changed in a commit ([#drone-convert-pathschanged](https://github.com/meltwater/drone-convert-pathschanged))

### Class Environment

You thought this was just going to be reading?  NOT, make sure you are in the correct folder structure for the rest of this lab:

`cd /class && drone --version`{{copy}}
