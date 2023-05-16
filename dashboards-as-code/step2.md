Let's start with installing Grafanalib, which is required to generate the dashboards in Grafana


To install Grafanalib python library, run the below command in the terminal on your right :
```
pip3 install grafanalib
```{{copy}}

To verify if the Grafanalib installation was successful, run the below command:
```
generate-dashboard --help
```{{copy}}

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
