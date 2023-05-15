Bring up the Grafana playground with prometheus datasource, which will be used for uploading the dashboard managed as code.

Copy paste the below command in the terminal and bring up the docker images for Grafana playground

```
cd grafana/devenv
```{{copy}}

```
./setup.sh
```{{copy}}

```
cd ..
```{{copy}}

```
make devenv sources=grafana,prometheus grafana_version=9.4.3
```{{copy}}

# To tear down later: `make devenv-down`

Now, verify you can access grafana UI by clicking the below link
[Grafana UI]({{TRAFFIC_HOST1_3001}})


Log in with user `admin` and password `admin`.

Navigate to Explore mode on the lefthand navigation bar, choose gdev-prometheus as data source and query an example metric such as counters_logins. If it shows data, you are ready to use grafana instance to add dashboard using Grafanalib.

