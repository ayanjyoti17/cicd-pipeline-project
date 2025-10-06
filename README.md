# CI/CD Pipeline for a Node.js Web Application 🚀

![CI/CD Pipeline Status](https://github.com/ayan jyoti17/cicd-pipeline-project/actions/workflows/main.yml/badge.svg)

This project demonstrates a complete, automated CI/CD (Continuous Integration/Continuous Deployment) pipeline for a simple Node.js web application. When new code is pushed to the `main` branch, a GitHub Actions workflow is automatically triggered to build, package, and deploy the application to a live server on AWS.

---

## Tech Stack 🛠️

* **Cloud Provider:** **AWS** (for the EC2 instance)
* **CI/CD:** **GitHub Actions**
* **Containerization:** **Docker** & **Docker Hub**
* **Application:** **Node.js** with **Express.js**
* **Version Control:** **Git** & **GitHub**

---

## CI/CD Workflow Breakdown ⚙️

The entire automated process is defined in the `.github/workflows/main.yml` file and consists of the following steps:

1.  **Trigger:** The pipeline is automatically triggered by a `git push` event to the `main` branch of the repository.

2.  **Checkout Code:** The GitHub Actions runner creates a clean environment and checks out the latest source code.

3.  **Login to Docker Hub:** The workflow securely logs into Docker Hub using credentials stored as encrypted secrets in the GitHub repository.

4.  **Build and Push Docker Image:** It then builds a new Docker image from the project's `Dockerfile`. This image is tagged with `latest` and pushed to my public Docker Hub repository.

5.  **Deploy to EC2:** The final step uses SSH to securely connect to the target AWS EC2 instance. It runs a deployment script that:
    * Pulls the new Docker image from Docker Hub.
    * Stops and removes the currently running container.
    * Starts a new container from the updated image, mapping port 80 on the host to port 8080 in the container.

---

## Configuration

To replicate this project, the following secrets must be configured in the GitHub repository's settings (`Settings > Secrets and variables > Actions`):

* `DOCKERHUB_USERNAME`: Your Docker Hub username.
* `DOCKERHUB_TOKEN`: An access token for Docker Hub.
* `EC2_HOST`: The public IP address of the EC2 instance.
* `EC2_USERNAME`: The username for the EC2 instance (e.g., `ubuntu`).
* `EC2_SSH_KEY`: The private SSH key used to connect to the EC2 instance.

---

## Project Status

**Status:** Completed ✅
