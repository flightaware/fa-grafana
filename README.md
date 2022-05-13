# fa-grafana
Suite of Grafana dashboards for PiAware

This is a multi-container Docker application that runs Grafana, Prometheus, and Prometheus exporter Docker containers to monitor your PiAware's flight tracking and system health
- [Claws's dump1090-exporter](https://github.com/claws/dump1090-exporter)
- [piaware_exporter](https://github.com/flightaware/piaware-exporter)
- [node_exporter](https://github.com/prometheus/node_exporter)


**It is recommended that you run this on a Raspberry Pi 3B+ or better**

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-graphs.png)

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-system-metrics.png)


## Setup

### 1. Install pre-requisite programs:

Convienent script to install git, python3-pip, docker-compose, and docker.

```
sudo bash -c "$(curl -sS https://raw.githubusercontent.com/flightaware/fa-grafana/master/install.sh)"
```

### 2. Checkout the fa-grafana git repository and cd into the directory

```
git clone https://github.com/flightaware/fa-grafana.git
cd fa-grafana
```

### 3. Rename the .env.sample file to .env 

```
mv .env.sample .env
```

### 4. Set the HOST_IP to your Pi's local IP address (required) and set other Grafana configuration if desired

```
nano .env
HOST_IP=<set IP address>
```

### 5. Delete any exisiting fa_grafana docker volumes
```
sudo docker-compose volume rm fa-grafana_grafana_data
```

### 6. Start up containers

```
sudo docker-compose up -d
```

### 7. Open Grafana in a web browser using your Pi's local IP address and Grafana port number
```
<IP address>:3000
```

### 8. fa-grafana dashboards should be present in list of dashboards



## Useful docker commands ##

#### To stop all docker containers, cd into the fa-grafana directory and use the following command:
```
sudo docker-compose down
```
#### List all running docker containers
```
sudo docker ps
```
#### List all docker images installed
```
sudo docker images
```
#### Delete a docker image
```
sudo docker rmi <IMAGE_ID>
```
