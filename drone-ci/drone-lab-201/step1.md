So while you were staring at our awesome intro, we were working hard behind the scenes to startup [Gitea](https://gitea.io), an open-source git service that works with a bunch of stuff (one of which is drone!).  This will give us a similar user experience and playground to popular cloud SaaS services like [BitBucket](bitbucket.org) and [GitHub](github.com).

### Account Registration

To start, please visit the [temporary site]({{TRAFFIC_HOST1_30000}}) and register for an account:

> **NOTICE**:
> If the gitea is not online quite yet, you can check `kubectl get pods`{{exec}} and wait for it to be 'Running'.

1. Click the 'Register' button (top right)
2. Use `root`{{copy}} for your username and put in some other bogus details you will be able to remember (we're not checking)
3. Click 'Register Account' button

### New OAuth2 Application

Now that we are logged in as root to gitea, we need to register drone for authentication:

1. Navigate to [OAuth2 settings]({{TRAFFIC_HOST1_30000}}/user/settings/applications)
2. Scroll to 'Manage OAuth2 Applications' section 
3. Add `drone`{{copy}} in the 'Application Name' box
4. Add `{{TRAFFIC_HOST1_30080}}/login`{{copy}} in the 'Redirect URI' box
5. Click 'Create Application' button
6. Make note of the following somewhere:
   1. 'Client ID'
   2. 'Client Secret'
7. Click 'Save' (**WARNING**: Don't forget this part!)

> **NOTICE**:
> You will use the 'Client ID' and 'Client Secret' in ensuing steps to configure drone for authentication against / with gitea.