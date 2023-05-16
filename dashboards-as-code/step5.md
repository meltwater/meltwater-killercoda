You will need to generate API Key to deploy the dashboard to Grafana instance, for this head to the [Grafana UI]({{TRAFFIC_HOST1_3001}})
Click on configuration icon on the bottom light corner on the home page, select API keys and generate a new API Key by clicking on `New API Key` tab. Enter the Key name as `killercoda` and Role as `Editor` and hit `Add`, copy over the API key.

Replace `<API-KEY>` in `grafana_api_key = getenv("<API-KEY>")` with the API Key you copied over into dashboard.py file on your terminal.
