<div style="font-family: Arial, sans-serif; background: #f8f9fa; padding: 20px; border: 1px solid #ddd; border-radius: 10px;">
  <h1 style="color: #0078d7;">🚀 CSVServer Assignment</h1>
  <p style="color: #5a5a5a;">Automating and simplifying containerized application deployment with Docker and Docker Compose.</p>
  <hr style="border: none; border-bottom: 1px solid #ddd; margin: 20px 0;">

  <h2 style="color: #0078d7;">📋 Prerequisites</h2>
  <ul style="color: #5a5a5a;">
    <li>Install Docker and Docker Compose on your system.</li>
    <li>Clone this repository using:
      <div style="background: #272c34; color: #ffffff; padding: 10px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
        <code>git clone https://github.com/ramankrishnan/your-repo-name.git</code>
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
        <code>'''shell docker run -d -p 9393:9393 -e CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/inputFile infracloudio/csvserver:latest</code>
        <button onclick="copyCode(this)" style="float: right; background: #0078d7; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Copy</button>
      </div>
    </li>
  </ol>

  <h2 style="color: #0078d7;">🎯 Task 2: Part II - Docker Compose Setup</h2>
  <p style="color: #5a5a5a;">Create a <code>docker-compose.yaml</code> file:</p>
  <div style="background: #272c34; color: #ffffff; padding: 10px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
    <code>
      version: '3'<br>
      services:<br>
      &nbsp;&nbsp;csvserver:<br>
      &nbsp;&nbsp;&nbsp;&nbsp;image: infracloudio/csvserver:latest<br>
      &nbsp;&nbsp;&nbsp;&nbsp;ports:<br>
      &nbsp;&nbsp;&nbsp;&nbsp;- "9393:9393"<br>
      &nbsp;&nbsp;&nbsp;&nbsp;environment:<br>
      &nbsp;&nbsp;&nbsp;&nbsp;- CSVSERVER_BORDER=Orange<br>
    </code>
    <button onclick="copyCode(this)" style="float: right; background: #0078d7; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer;">Copy</button>
  </div>

  <h2 style="color: #0078d7;">📈 Outputs</h2>
  <img src="https://via.placeholder.com/800x400.png?text=Graph+Output" alt="Graph Output" style="width: 100%; border: 1px solid #ddd; border-radius: 5px;">

  <script>
    function copyCode(button) {
      const codeBlock = button.previousElementSibling.textContent;
      navigator.clipboard.writeText(codeBlock);
      button.textContent = "Copied!";
      setTimeout(() => (button.textContent = "Copy"), 2000);
    }
  </script>
</div>
