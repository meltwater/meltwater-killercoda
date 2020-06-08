Lets take our test from before and now create a module to test out the API, since technicaly a 2xx HTTP response for this particular service technically only verifies through the loadbalancer behind it and is not a true functionality check on the service beneath.  Consider our jokes api.  I mean, lets face it, a joke without a punchline would definitely be a failure.

Paste the following code beneath `modules:` section in the `blackbox.yml` file using the editor:

`  api_jokes:
    prober: http
    http:
      bearer_token: e9005636c98a9d6db9d5267f7fcbdbb8
      no_follow_redirects: false
      fail_if_ssl: false
      fail_if_body_not_matches_regexp:
        - "punchline\":"
      tls_config:
        insecure_skip_verify: false`{{copy}}

**NOTE**: You will see that the `bearer_token` has become part of the module, this allows the flexibility of running multiple checks to the same service using alternative `target` configuration in Prometheus.
