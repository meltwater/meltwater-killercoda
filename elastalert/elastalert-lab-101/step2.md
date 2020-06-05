ElastAlert saves information and metadata about its queries and its alerts back
to Elasticsearch. This is useful for auditing, debugging, and it allows
ElastAlert to restart and resume exactly where it left off.

Create an index with `elastalert-create-index`:
```
elastalert-create-index --index=elastalert_status --config config.yml
```{{execute}}

This should complete with a message like:
```
New index elastalert_status created
Done!
```
