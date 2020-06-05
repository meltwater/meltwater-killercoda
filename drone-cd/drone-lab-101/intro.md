Welcome to Drone CD!  While this course aims to give you a basic understanding of a particular toolset [drone.io](drone.io), we want to give you an idea of where drone comes into the CI/CD (continuous improvement / continuous delivery) model of software deployment.

### CI: Continuous Improvement

The aim of CI is to speed up the 'boring' part of software development.  While you work on code, CI does the rest, starting with a commit to some change-control system:
 * Automated Building (in every conceivable way)
 * Automated Testing (stuff that broke before)
 * Automated Validation (it is fixed!)
 * Artifact Manageent

All of these actions comprise continuous improvement, so that you can code and know the effects/results of the changes in a very repeatable way. 

### CD: Continuous Delivery

Ok, I suppose you might have been thinking compact-disk, but c'mon do they even put those in cars anymore?  Ok, so you got through CI to the point where you have this nifty artifact ( JAR, NPM, #insertRandomThreeLetterAbbr ), now what?  Answer: CD!  After you code, CD gets it into the hands of your users by provising reliable and repeatable deployents so you can continue to focus on development versus deployment.  This includes:
 * Artifact Deployment
 * Automated Complex Workflows
 * Automated Smoke Testing
 * Automated Rollback (limiting downtime)
 * Environment Verification

All of these actions comprise continuous delivery, so that you can ensure none of the steps you need to get your code from artifact to production are forgotten.  This activity by itself near eliminates downtime as you will know what is going into your environments even before it gets there.

So lets get started!
