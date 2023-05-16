Next, you will need to generate API Key to deploy the dashboard to Grafana instance.
To Generate an API Key, head to the [Grafana UI]({{TRAFFIC_HOST1_3001}}), click on configuration icon on the bottom light corner in the home page, select API keys and generate a new API Key by clicking on `New API Key` tab. Enter the Key name as `killercoda` and Role as `Admin` and hit `Add`, copy over the API key and paste it into a clipboard.


Now, export the two environmental variables, which will be used by the script:

Run these in your terminal window

```
export GRAFANA_SERVER={{TRAFFIC_HOST1_3001}}
```{{copy}}


```
export GRAFANA_API_KEY=<Replace with Copied API-Key>
```{{copy}}

You are all set to dploy the dashboard into grafana instance, run the below command:
```
python dashboard.py
```{{copy}}

You can now go into [Grafana UI]({{TRAFFIC_HOST1_3001}}) and check for `Prometheus 2.0 Overview - KillerCoda` dashboard under General folder, which you just deployed using the Grafanalib.
