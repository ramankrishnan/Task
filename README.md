# 🚀 CSVServer Assignment

Automating and simplifying containerized application deployment with Docker and Docker Compose.

---

## 📝 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Task 1: Running the Container](#task-1-running-the-container)
- [Task 2: Docker Compose Setup](#task-2-docker-compose-setup)
- [Task 3: Adding Prometheus](#task-3-adding-prometheus)
- [Outputs](#outputs)
- [Contributors](#contributors)

---

## 🌟 Overview

This repository contains a step-by-step guide to complete the CSVServer assignment. Each task builds upon the last, ensuring a seamless deployment process.

**Key Objectives:**
- Deploy the csvserver application.
- Automate configuration using Docker Compose.
- Monitor metrics using Prometheus.

---

## 📋 Prerequisites

Before you begin:

1. Install **Docker** and **Docker Compose** on your system.
2. Clone this repository using:

   ```bash
   git clone https://github.com/ramankrishnan/your-repo-name.git
   cd your-repo-name







If you're restricted to using only a README.md file on GitHub, you can style and structure it directly with Markdown and inline HTML. Markdown allows some HTML elements, so you can incorporate basic styling, logos, links, and other interactive elements. Here's how you can achieve it:

Styled README.md with Inline HTML
markdown
Copy code
# 🚀 CSVServer Assignment

Automating and simplifying containerized application deployment with Docker and Docker Compose.

---

## 📝 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Task 1: Running the Container](#task-1-running-the-container)
- [Task 2: Docker Compose Setup](#task-2-docker-compose-setup)
- [Task 3: Adding Prometheus](#task-3-adding-prometheus)
- [Outputs](#outputs)
- [Contributors](#contributors)

---

## 🌟 Overview

This repository contains a step-by-step guide to complete the CSVServer assignment. Each task builds upon the last, ensuring a seamless deployment process.

**Key Objectives:**
- Deploy the csvserver application.
- Automate configuration using Docker Compose.
- Monitor metrics using Prometheus.

---

## 📋 Prerequisites

Before you begin:

1. Install **Docker** and **Docker Compose** on your system.
2. Clone this repository using:

   ```bash
   git clone https://github.com/ramankrishnan/your-repo-name.git
   cd your-repo-name
🔥 Task 1: Running the Container
Step 1: Pull the container image
bash
Copy code
docker pull infracloudio/csvserver:latest
Step 2: Write a script named gencsv.sh
Generate an inputFile using:

bash
Copy code
./gencsv.sh 0 10
Step 3: Run the container
bash
Copy code
docker run -d -p 9393:9393 -e CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/inputFile infracloudio/csvserver:latest
Access the Application
Open your browser and navigate to http://localhost:9393.
