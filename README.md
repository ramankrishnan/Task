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
- Deploy the csvserver application.
- Automate configuration using Docker Compose.
- Monitor metrics using Prometheus.

---

<div align="center">
<h2 id="prerequisites">📋 Prerequisites</h2>
</div>

Before you begin, ensure you have:

- Installed **Docker** and **Docker Compose** on your system.
- Cloned this repository:

```shell
git clone https://github.com/ramankrishnan/your-repo-name.git
cd your-repo-name```

#<div align="center"> <h2 id="task-1-running-the-container">🔥 Task 1: Running the Container</h2> </div>
#Step 1: Pull the container image
```shell
docker pull infracloudio/csvserver:latest```
#Step 2: Write a script named gencsv.sh
```shell
./gencsv.sh 0 10

#Step 3: Run the container
```shell
docker run -d -p 9393:9393 -e CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/inputFile infracloudio/csvserver:latest


