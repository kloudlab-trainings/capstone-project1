# capstone-project1
In this project, We will see how a complete CI/CD works for flask app. 

We have 
1. Dockerfile - dockerfile for the app. 
2. docker-compose.yml - for local testing of the app
3. Jenkinsfile - CI/CD for the app. This builds the image and push to (dockerhub repo)[https://hub.docker.com/repository/docker/devopsfarm/kloudlab-capstone-flaskapp/general]. additionally, It deploys the new docker image to ec2 instance.
4. .github/workflows/python-app.yml -  github action to run SCA, Linting and tests for each PR on main branch.



