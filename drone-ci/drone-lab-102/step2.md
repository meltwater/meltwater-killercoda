### Code Validation

So we are learning about CI still at this stage, and part of any pipeline should include some type of automated validation of what you are doing so  that you know it's not going to be junk once it is made into an artifact.

The following is the drone pipeline `step`, a pipeline can have multiple steps and a configuration file can have multiple pipelines.  Copy the code below and place it into the steps level of the `class` pipeline in the file `/class/.drone.yml` using the Katacoda editor (top right).

```
- name: code-validation
  image: philipharries/html_tidy
  commands:
    - tidy -eq *.htm*
  when:
    event: [ pull_request ]
```{{copy}}

**HINT**: The `when` clause can be implemented to define when it is important for the step to execute.  Automated testing is a reassurance of a first glance to any reviewers.

### Testing Code

Right, you have the code above in-place, let's test your `index.html` file using drone to see if you have proper html syntax!

`cd /class && drone exec --trusted --repo class --branch master --pipeline class --event pull_request && echo success || echo failed with $?`{{exec}}

**NOTICE**: Copy and paste the content of the code block above into the editor terminal, or open a new terminal tab in the Killercoder UI and click on the code     block to run it. The code might take a few minutes to run if the host still has to download the `html_tidy` docker image before it gives feedback.

**HINT**: Pull requests / PR's are a fantastic way to ensure you have a hardened step for testing / review prior to a merge activity.
