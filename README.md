# CA5

## Prerequisites

Before you begin, ensure you have the following prerequisites:

1. **Jenkins Server:** Make sure you have a Jenkins server set up and running.

2. **Docker:** You need Docker installed on your system to manage containers.

## Building and Running the Project

1. Open your Jenkins server.

2. Create a new Jenkins pipeline or job for this project.

3. Configure the pipeline/job to build either the main branch or the i200579 branch.

4. Trigger the build in Jenkins, and it will execute the project's build process.


## Checking Containers

After the build process is complete, verify that the Docker containers are up and running. Open your terminal and run the following command:

```bash
docker ps
```

## Accessing the Web Service

After the build process is complete, you can access the web service locally. To do so, follow these steps:

1. Open your web browser.

2. In the address bar, enter the following URL: `http://localhost:8080`

   This will allow you to access the web service running on your local machine.
