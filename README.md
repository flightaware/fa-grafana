# fa-grafana
Docker Grafana based metrics for PiAware receivers

This repo contains setup for a Docker application that utilizes Grafana, Prometheus, and a fork of [Claws's dump1090-exporter](https://github.com/claws/dump1090-exporter) Docker images to display dump1090-fa metrics for your PiAware device.

For now, this is intended to run on top of an existing PiAware setup and could potentially be included in a future official SD card release.

![Image of fa-grafana](https://github.com/flightaware/fa-grafana/blob/master/fa-grafana-graphs.png)


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

### 3. Start up docker containers using docker-compose. This will start Grafana, Prometheus, and dump1090-exporter.

```
docker-compose up -d
```

### 4. Open Grafana in a web browser at your Pi's local IP port 3000:  `<local_IP>:3000`
