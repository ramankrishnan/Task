<div align="center">

# 🚀 **CSVServer Assignment**

<p>
Automating and simplifying containerized application deployment with Docker and Docker Compose.
</p>

<img src="https://img.icons8.com/color/96/docker.png" alt="Docker Logo" height="96">
<img src="https://img.icons8.com/color/96/prometheus.png" alt="Prometheus Logo" height="96">
<img src="https://img.icons8.com/color/96/github.png" alt="GitHub Logo" height="96">

</div>

---

## 📝 **Table of Contents**

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Task 1: Running the Container](#task-1-running-the-container)
- [Task 2: Docker Compose Setup](#task-2-docker-compose-setup)
- [Task 3: Adding Prometheus](#task-3-adding-prometheus)
- [Outputs](#outputs)
- [Contributors](#contributors)

---

<div align="center">

<h2 id="overview">🌟 Overview</h2>

</div>

This repository contains a step-by-step guide to complete the CSVServer assignment. Each task builds upon the last, ensuring a seamless deployment process.

**Key Objectives**:
- Deploy the CSVServer application.
- Automate configuration using Docker Compose.
- Monitor metrics using Prometheus.

---

<div align="center">

<h2 id="prerequisites">📋 Prerequisites</h2>

</div>

Before you begin, ensure you have:

- Installed **Docker** and **Docker Compose** on your system.
- Cloned this repository:
  ```bash
  git clone https://github.com/ramankrishnan/your-repo-name.git
  cd your-repo-name
<div align="center"> <h2 id="task-1-running-the-container">🔥 Task 1: Running the Container</h2> </div>
Step 1: Pull the Container Image
Use the following command to pull the latest csvserver image:

bash
Copy code
docker pull infracloudio/csvserver:latest
Step 2: Write a Script gencsv.sh
Create a script named gencsv.sh to generate the required CSV file:

bash
Copy code
#!/bin/bash
# gencsv.sh
seq $1 $2 > inputFile
Run the script:

bash
Copy code
./gencsv.sh 0 10
Step 3: Run the Container
Run the container with the following command:

bash
Copy code
docker run -d -p 9393:9393 \
  -e CSVSERVER_BORDER=Orange \
  -v $(pwd)/inputFile:/inputFile \
  infracloudio/csvserver:latest
<div align="center"> <h2 id="task-2-docker-compose-setup">🛠 Task 2: Docker Compose Setup</h2> </div>
Step 1: Create a docker-compose.yml
Define a docker-compose.yml file to simplify running the container:

yaml
Copy code
version: "3.8"
services:
  csvserver:
    image: infracloudio/csvserver:latest
    ports:
      - "9393:9393"
    environment:
      CSVSERVER_BORDER: Orange
    volumes:
      - ./inputFile:/inputFile
Step 2: Start the Service
Run the following command to start the container:

bash
Copy code
docker-compose up -d
<div align="center"> <h2 id="task-3-adding-prometheus">📊 Task 3: Adding Prometheus</h2> </div>
Step 1: Add Prometheus to docker-compose.yml
Extend the docker-compose.yml file to include Prometheus:

yaml
Copy code
services:
  csvserver:
    image: infracloudio/csvserver:latest
    ports:
      - "9393:9393"
    environment:
      CSVSERVER_BORDER: Orange
    volumes:
      - ./inputFile:/inputFile

  prometheus:
    image: prom/prometheus:latest
    ports:
      - "9090:9090"
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
Step 2: Configure Prometheus
Create a prometheus.yml configuration file:

yaml
Copy code
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: "csvserver"
    static_configs:
      - targets: ["csvserver:9393"]
<div align="center"> <h2 id="outputs">📤 Outputs</h2> </div>
After completing all the steps:

Access the CSVServer application at http://localhost:9393.
Access Prometheus metrics at http://localhost:9090.
<div align="center"> <h2 id="contributors">🤝 Contributors</h2> </div>
Raman Krishnan
Feel free to use and contribute to this repository!
