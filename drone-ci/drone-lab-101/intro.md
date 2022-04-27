Welcome to Drone CI!  While this course aims to give you a basic understanding of Harness' open-source CI toolkit [drone.io](drone.io), we want to give you an idea of where drone enters the CI/CD (continuous improvement / continuous delivery) model of software deployment.

### CI: Continuous Improvement

The aim of CI is to speed up the 'boring' part of software development.  While you work on code, CI does the rest, starting with a commit to some change-control system:
 * Automated Building (in every conceivable way)
 * Automated Testing (stuff that broke before)
 * Automated Validation (it is fixed!)
 * Artifact Management

All of these actions comprise continuous improvement, so that you can code and know the effects/results of the changes in a very repeatable way. 

### CD: Continuous Delivery

No, CD does not stand for compact disk, those were obsolete years ago.  While CI brought you to the point where you have a nifty artifact ( JAR, NPM, #insertRandomThreeLetterAbbr ), now what?  Answer: Continuous Delivery!  After you code, CD gets it into the hands of your users by provising reliable and repeatable deployents so you can continue to focus on development versus deployment.  This includes:
 * Artifact Deployment
 * Automated Complex Workflows
 * Automated Smoke Testing
 * Automated Rollback (limiting downtime)
 * Environment Verification

All of these actions comprise continuous delivery, so that you can ensure none of the steps you need to get your code from artifact to production are forgotten.  This activity by itself near eliminates downtime as you will know what is going into your environments even before it gets there.

Harness is well fitted to help with any CI or CD solution, so lets get started!
