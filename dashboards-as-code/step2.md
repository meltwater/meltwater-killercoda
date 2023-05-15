Now that we have Grafana instance running, lets jump on to installing python 3 and Grafanalib, which is required to generate the dashboards

To install python3, run the below command in the terminal on your right

```
sudo apt-get update
sudo apt-get install python3.8 python3-pip
```

And now lets install Grafanalib python library:
```
pip3 install grafanalib
```

To verify if the Grafanalib installation was successful, run the below command:
```
generate-dashboard --help
```

This should complete with a message like:
```
usage: generate-dashboard [-h] [--output OUTPUT] DASHBOARD

positional arguments:
  DASHBOARD             Path to dashboard definition

optional arguments:
  -h, --help            show this help message and exit
  --output OUTPUT, -o OUTPUT
                        Where to write the dashboard JSON
```




