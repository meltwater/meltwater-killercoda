Now that you have an idea of how it generally functions, its time to find something to test, right?  Probably the most common test is against some given API function, as with that one generally has the capability of determining both that the database behind the application is working, but also the responsiveness of the query returned.

In our case, we are going to run some tests against a test rest service.  By running the API, we can know that authentication is functional and as long as we get the expected format we know that the database is alive and functioning normally:

`curl -sH 'Authorization: Bearer e9005636c98a9d6db9d5267f7fcbdbb8' http://dummy.restapiexample.com/api/v1/employees | jq .`{{execute CLIENT}}

We've all built them, a super nifty bearer authentication system that access an awesome programming interface (otherwise known as an API), there are databases and query engines and all sorts of stuff that could go wrong, but now how does one monitor this?
