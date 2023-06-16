# fa-grafana
Suite of Grafana dashboards for PiAware

This is a multi-container Docker application that runs Grafana, Prometheus, and the Prometheus exporter containers below to monitor your PiAware's flight tracking and system health
- [Claws's dump1090-exporter](https://github.com/claws/dump1090-exporter)
- [piaware_exporter](https://github.com/flightaware/piaware-exporter)
- [node_exporter](https://github.com/prometheus/node_exporter)


### **Minimum System Requirements:**
- Raspberry Pi 3B+ or Pi 4
- Raspberry Pi Zero 2 W

The docker containers used in this application are built for ARMv7 CPU architectures.

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-graphs.png)

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-system-metrics.png)


## Setup ##
<details>
 
 <summary>New Installations</summary>

<br />
These steps will install required dependencies, pull all the Docker images from Docker Hub, and start up the containers
 
#### 1. Install pre-requisite programs:

Convenient script to install git, docker compose, and docker.

```
sudo bash -c "$(curl -sS https://raw.githubusercontent.com/flightaware/fa-grafana/master/install.sh)"
```

#### 2. Checkout the fa-grafana git repository and cd into the directory

```
git clone https://github.com/flightaware/fa-grafana.git
cd fa-grafana
```

#### 3. Rename the .env.sample file to .env 

```
mv .env.sample .env
```

#### 4. Set the HOST_IP to your Pi's local IP address (required) and set other Grafana configuration if desired

```
nano .env
HOST_IP=<set IP address>
```

#### 5. Start up containers

```
sudo docker compose up -d
```

#### 6. Open Grafana in a web browser by entering your Pi's local IP address and the configured Grafana port number
```
<IP address>:3000
```

</details>
 
 
<details>
 
 <summary>Updating Existing Installations</summary>

 <br />
 These steps will stop the running fa-grafana containers, pull the latest images from Docker Hub, clean up volumes, and start up the new containers

#### 1. Stop fa-grafana docker containers
```
cd fa-grafana
sudo docker compose down
```
#### 2. Pull latest source code
```
git pull
```
#### 3. Make sure the .env file has HOST_IP and other configuration variables set. Rename the provided .env.sample file to .env if needed. <br />

#### 4. Delete existing fa-grafana_grafana_data Docker volume
```
sudo docker volume rm fa-grafana_grafana_data
```
#### 5. Start up containers
```
sudo docker compose up -d
```
  

</details>

 ## Configuration

You configure the Grafana interface using the .env file shown below. This is what Grafana will use when you start its container.

```
# This file contains environment variables referenced in the docker-compose.yml

# Set HOST_IP to your Pi's local IP (no quotes)
HOST_IP=

######## Grafana Settings - configurable settings #########

# enable/disable login
DISABLE_LOGIN=false

# default Grafana port
GRAFANA_PORT=3000

# username and password
GRAFANA_USERNAME=admin
GRAFANA_PASSWORD=flightaware

# light or dark mode
GRAFANA_THEME=dark
```
 
 
## Reference ##

</details>
 
<details>
 <summary>Cleaning up unused Docker images to free up disk space</summary>
 <br />
 
 ```
 sudo docker image prune -a
 ```
</details>
 

<details>
 
 <summary>Useful Docker commands</summary>
  
#### To stop all Docker containers, cd into the fa-grafana directory and use the following command:
```
sudo docker compose down
```
#### List all running Docker containers
```
sudo docker ps
```
#### List all Docker images installed
```
sudo docker images
```
#### Delete a Docker image
```
sudo docker rmi <IMAGE_ID>
```
 
#### Delete unused and dangling Docker images
```
sudo docker image prune -a
```
  

