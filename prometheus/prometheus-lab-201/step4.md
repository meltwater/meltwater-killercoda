Lets take our test from before and now create a module to test out the API, since technically a 2xx HTTP response for this particular service really only verifies through the loadbalancer behind it may not a true functionality check on the service beneath.  Consider our employee api.  I mean, lets face it, if you don't get paid (`.data[].employee_salary`{{}}), your not REALLY an employee...

Paste the following code beneath `modules:`{{}} section in the `blackbox.yml`{{}} file using the editor:

```
  api_employee:
    prober: http
    http:
      bearer_token: e9005636c98a9d6db9d5267f7fcbdbb8
      no_follow_redirects: false
      fail_if_body_not_matches_regexp:
        - "employee_salary\":\"[0-9]{4,7}"
```{{copy}}

**NOTE**: You will see that the `bearer_token` has become part of the module, this allows the flexibility of running multiple checks to the same service using alternative `target` configurations in Prometheus.
