# Jenkins Pipeline Setup Guide

## Prerequisites

1. Jenkins installed and running
2. Docker installed on Jenkins server
3. Docker Pipeline plugin installed in Jenkins
4. Git plugin installed in Jenkins

## Setup Steps

### 1. Install Required Jenkins Plugins

Go to Jenkins → Manage Jenkins → Manage Plugins → Available and install:
- Docker Pipeline
- Docker plugin
- Git plugin
- Pipeline plugin

### 2. Configure Docker Credentials (Optional - for Docker Hub)

1. Go to Jenkins → Manage Jenkins → Manage Credentials
2. Click on "Global" domain
3. Click "Add Credentials"
4. Select "Username with password"
5. Enter your Docker Hub credentials
6. Set ID as `dockerhub-credentials`

### 3. Create Jenkins Pipeline Job

1. Click "New Item" in Jenkins
2. Enter job name (e.g., "digit-recognition-cnn")
3. Select "Pipeline" and click OK
4. In the Pipeline section, select "Pipeline script from SCM"
5. Choose "Git" as SCM
6. Enter your repository URL
7. Set branch to `*/main`
8. Set Script Path to `Jenkinsfile`
9. Click Save

### 4. Pipeline Files

This project includes two Jenkinsfile options:

#### Jenkinsfile (Advanced)
- Full CI/CD pipeline
- Docker registry push
- Deployment stage
- Artifact archiving
- Use for production environments

#### Jenkinsfile.simple (Basic)
- Simple build and test
- Docker Hub push
- Windows-compatible (uses `bat` commands)
- Use for development/testing

### 5. Update Configuration

Before running, update these values in the Jenkinsfile:

```groovy
// In Jenkinsfile
DOCKER_REGISTRY = 'your-registry-url'

// In Jenkinsfile.simple
git branch: 'main', url: 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
```

### 6. Run the Pipeline

1. Go to your Jenkins job
2. Click "Build Now"
3. Monitor the build progress in "Console Output"

## Pipeline Stages Explained

### Checkout
- Pulls the latest code from Git repository

### Build Docker Image
- Builds Docker image from Dockerfile
- Tags with build number and 'latest'

### Run Tests
- Runs the digit recognition model
- Trains and evaluates the CNN

### Push to Registry (Optional)
- Pushes Docker image to registry
- Only runs on main branch

### Deploy (Optional)
- Deploys using docker-compose
- Only runs on main branch

### Archive Artifacts
- Saves predictions.png for review

## Troubleshooting

### Docker Permission Issues
If Jenkins can't access Docker, add Jenkins user to docker group:
```bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
```

### Windows-Specific Issues
- Use `Jenkinsfile.simple` which uses `bat` instead of `sh`
- Ensure Docker Desktop is running
- Check Windows firewall settings

### Build Fails on Test Stage
- Increase Docker memory allocation
- Check if MNIST dataset can be downloaded
- Review console output for specific errors

## Environment Variables

You can set these in Jenkins job configuration:
- `DOCKER_REGISTRY`: Your Docker registry URL
- `DOCKER_IMAGE`: Image name (default: digit-recognition-cnn)
- `GIT_BRANCH`: Branch to build (default: main)

## Webhook Setup (Optional)

To trigger builds automatically on Git push:

1. Go to your GitHub repository → Settings → Webhooks
2. Add webhook URL: `http://your-jenkins-url/github-webhook/`
3. Select "Just the push event"
4. In Jenkins job, enable "GitHub hook trigger for GITScm polling"

## Next Steps

- Set up email notifications for build status
- Add code quality checks (linting, security scans)
- Implement automated testing
- Configure deployment to cloud platforms
