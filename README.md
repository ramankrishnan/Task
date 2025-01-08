🚀 CSVServer Assignment
Automating and simplifying containerized application deployment with Docker and Docker Compose.

📝 Table of Contents
Overview
Prerequisites
Task 1: Running the Container
Task 2: Part II - Docker Compose Setup
Task 3: Part III - Adding Prometheus
How to Use
Outputs
🌟 Overview
This repository contains a step-by-step guide to complete the CSVServer assignment. Each task builds upon the last, ensuring a seamless deployment process.

Key Objectives:
Deploy the csvserver application.
Automate configuration using Docker Compose.
Monitor metrics using Prometheus.
📋 Prerequisites
Before you begin:

Install Docker and Docker Compose on your system.
Clone this repository using the command:
bash
Copy code
git clone https://github.com/ramankrishnan/your-repo-name.git
cd your-repo-name
🔥 Task 1: Running the Container
Step 1: Pull the container image
bash
Copy code
docker pull infracloudio/csvserver:latest
Step 2: Write a bash script
Create a script named gencsv.sh to generate the inputFile:

bash
Copy code
./gencsv.sh 0 10
This script generates a file inputFile with indexed comma-separated values.

Step 3: Run the container
Run the container using the following command:

bash
Copy code
docker run -d -p 9393:9393 -e CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/inputFile infracloudio/csvserver:latest
Step 4: Access the application
Open your browser and navigate to:
👉 http://localhost:9393

🎯 Task 2: Part II - Docker Compose Setup
Step 1: Create docker-compose.yaml
yaml
Copy code
version: '3'
services:
  csvserver:
    image: infracloudio/csvserver:latest
    container_name: csvserver
    ports:
      - "9393:9393"
    environment:
      - CSVSERVER_BORDER=Orange
    volumes:
      - ./inputFile:/inputFile
Step 2: Create .env file
bash
Copy code
CSVSERVER_BORDER=Orange
Step 3: Run Docker Compose
bash
Copy code
docker-compose up -d
Files to Include:
docker-compose.yaml
csvserver.env
inputFile
Commit Changes:
bash
Copy code
git add .
git commit -m "Added Docker Compose setup"
git push origin main
📈 Task 3: Part III - Adding Prometheus
Update docker-compose.yaml to include Prometheus
yaml
Copy code
version: '3'
services:
  csvserver:
    ...
  prometheus:
    image: prom/prometheus:v2.45.2
    ports:
      - "9090:9090"
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
Create prometheus.yml
yaml
Copy code
scrape_configs:
  - job_name: 'csvserver'
    static_configs:
      - targets: ['csvserver:9393']
Run Prometheus
bash
Copy code
docker-compose up -d
Access Prometheus
Open your browser and navigate to:
👉 http://localhost:9090

📂 Outputs
Application available at: http://localhost:9393

Index	Value
0	234
1	98
Prometheus Graph for csvserver_records

🚀 How to Use
Clone the repository:

bash
Copy code
git clone https://github.com/ramankrishnan/your-repo-name.git
cd your-repo-name
Follow the instructions in each task section.

Verify the outputs.

🤝 Contributors
Raman K. (GitHub Profile)
