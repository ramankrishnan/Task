<div style="font-family: Arial, sans-serif; background: #f8f9fa; padding: 20px; border: 1px solid #ddd; border-radius: 10px;">
  <h1 style="color: #0078d7;">🚀 CSVServer Assignment</h1>
  <p style="color: #5a5a5a;">Automating and simplifying containerized application deployment with Docker and Docker Compose.</p>
  <hr style="border: none; border-bottom: 1px solid #ddd; margin: 20px 0;">

  <h2 style="color: #0078d7;">📋 Prerequisites</h2>
  <ul style="color: #5a5a5a;">
    <li>Install Docker and Docker Compose on your system.</li>
    <li>Clone this repository using:
      <div style="background: #272c34; color: #ffffff; padding: 10px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
        <code>git clone https:https://github.com/ramankrishnan/Task.git</code>
        <button onclick="copyCode(this)" style="float: right; background: #0078d7; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Copy</button>
      </div>
    </li>
  </ul>

  <h2 style="color: #0078d7;">🔥 Task 1: Running the Container</h2>
  <ol style="color: #5a5a5a;">
    <li>Pull the container image:
      <div style="background: #272c34; color: #ffffff; padding: 10px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
        <code>docker pull infracloudio/csvserver:latest</code>
        <button onclick="copyCode(this)" style="float: right; background: #0078d7; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Copy</button>
      </div>
    </li>
    <li>Write a bash script to generate the input file.</li>
    <li>Run the container using:
      <div style="background: #272c34; color: #ffffff; padding: 10px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
       
```shell
docker run -d -p 9393:9393 -e CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/inputFile infracloudio/csvserver:latest


