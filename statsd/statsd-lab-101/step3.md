## Run Graphite, Carbon and StatsD

The images for Graphite and StatsD should have been pulled down in the background when you started this course using `docker pull graphiteapp/graphite-statsd`. 

To run them, enter the following command into the terminal

`docker run -d --name graphite --restart=always -p 80:80 -p 2003-2004:2003-2004 -p 2023-2024:2023-2024 -p 8125:8125/udp -p 8126:8126 graphiteapp/graphite-statsd`{{exec}}

Breakdown of the above command
  * `docker run -d --name graphite`
Runs the docker container in detached mode with the name graphite. By running in detached mode, the container runs in the background and exits when the root process used to run the container exits.
  * `-p 80:80 -p 2003-2004:2003-2004 -p 2023-2024:2023-2024 -p 8125:8125/udp -p 8126:8126`
These are the port mappings. -p publishes the ports which maps a container port (right) to a port on Docker host(left). By default these connections use TCP, but you can instruct UDP to be used using /udp. Here, the port the StatsD port uses isset to use UDP. This is the default and advised behaviour for this particular connection.

  * `graphiteapp/graphite-statsd`
The image pulled from Docker Hub.  


This will start a Docker container named: graphite
The container contains the following Components 
* [Ngnix] - reverse proxies the graphite dashboard
* [Graphite] - front-end dashboard
* [Carbon] - back-end
* [StatsD] - UDP based back-end proxy

By default, statsd listens on the UDP port 8125.
