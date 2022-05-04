# fa-grafana
Docker Grafana based metrics for PiAware receivers

This repo contains setup for a Docker application that utilizes Grafana, Prometheus, and a fork of [Claws's dump1090-exporter](https://github.com/claws/dump1090-exporter) Docker images to display dump1090-fa metrics for your PiAware device.

**This is currently in development and has only been tested on a Raspberry Pi 3B+ running the PiAware 3.8.1 SD card image.**

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-graphs.png)
![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-system-metrics.png.png)


## Setup

### 1. Install pre-requisite programs:

The following command will download and run a simple script that handles installation of git, python3-pip, docker-compose, and docker.

```
sudo bash -c "$(curl -sS https://raw.githubusercontent.com/flightaware/fa-grafana/master/install.sh)"
```

### 2. Checkout the fa-grafana git repository and cd into the directory

```
git clone https://github.com/flightaware/fa-grafana.git
cd fa-grafana
```

### 3. Edit the .env file and set your Pi's local IP address (required) and a few other default config if desired (i.e. username/password, light/dark mode)

```
nano .env
HOST_IP=<set IP address>
```

### 4. Start up docker containers using docker-compose. This will start Grafana, Prometheus, and dump1090-exporter.

```
sudo docker-compose up -d
```

### 5. Open Grafana in a web browser using your Pi's local IP address on port 3000 (Use the login info set in the .env file above):
```
<IP address>:3000
```

### 6. Select the fa-grafana dashboard in the list of dashboards.

## Docker Usage ##

### To stop docker containers, cd into the fa-grafana directory and use the following command:
```
sudo docker-compose down
```

### More to come...
