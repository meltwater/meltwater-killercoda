ElastAlert has many
[rule types](https://elastalert.readthedocs.io/en/latest/ruletypes.html)
available, in this example we will use the
[flatline](https://elastalert.readthedocs.io/en/latest/ruletypes.html#flatline)
rule type.

As you read about each parameter, click the "Copy to Editor" button and paste into `example_flatline.yml` in the editor window. At the end
you will have a working alert rule.

### Common Options

These options are common to any ElastAlert rule.

```
name: Flatline Example
```{{copy}}

**name:** The name of the rule. This *must be unique across all rules*. The name will be
used in alerts and used as a key when writing and reading search metadata back
from Elasticsearch.

```
type: flatline
```{{copy}}

**type:** This can be any supported
[rule type](https://elastalert.readthedocs.io/en/latest/ruletypes.html).

```
index: heartbeat
```{{copy}}

**index:** The name of the index that will be searched. Wildcards can be used here, such
as: `index: logstash-someapp-*`.


```
filter:
- query:
    query_string:
      query: "host: elasticsearch"
```{{copy}}

**filter:** A list of Elasticsearch query DSL filters that is used to query Elasticsearch.
For more information writing filters, see
[Writing Filters](https://elastalert.readthedocs.io/en/latest/recipes/writing_filters.html#writingfilters).

In this example, each heartbeat document has the field `host: elasticsearch`, so
we can write our alert based on that.

```
alert:
- debug
```{{copy}}

**alert:** Each rule may have any number of
[alerts](https://elastalert.readthedocs.io/en/latest/ruletypes.html#alerts)
attached to it.

The [debug](https://elastalert.readthedocs.io/en/latest/ruletypes.html#debug)
alert logs to standard output.

### Flatline Options

These options are specific to flatline rules.

```
threshold: 5
```

**threshold:** The minimum number of events for an alert *not* to be triggered.

```
timeframe:
  seconds: 30
```{{copy}}

**timeframe:** The time period that must contain less than `threshold` events.
