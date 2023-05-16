You will need to generate API Key to deploy the dashboard to Grafana instance, for this head to the [Grafana UI]({{TRAFFIC_HOST1_3001}})
Click on configuration icon on the bottom light corner on the home page, select API keys and generate a new API Key by clicking on `New API Key` tab. Enter the Key name as `killercoda` and Role as `Editor` and hit `Add`, copy over the API key and paste it into a clipboard.


Now, export the two environmental variables that is required by the script:

Run these in your terminal window

```
export GRAFANA_SERVER={{TRAFFIC_HOST1_3001}}
```{{copy}}


```
export GRAFANA_API_KEY=<Replace with Copied API-KEY>
```{{copy}}

You are all set to dploy the dashboard into grafana instance now, run the below command:
```
python dashboard.py
```{{copy}}

You can now go into [Grafana UI]({{TRAFFIC_HOST1_3001}}) and check for `Prometheus 2.0 Overview - KillerCoda` dashboard under General folder which was deployed using the Grafanalib.
