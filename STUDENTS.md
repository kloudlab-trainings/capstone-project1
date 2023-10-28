## Students need to follow below steps to execute the capstone project on their environment
1. Create EC2 instances for jenkins and app deployment(flask-app), one for each.
2. Setup Jenkins on `jenkins` ec2 instance.
3. Setup Docker on the `flask-app` ec2 instance.
4. Attach `flask-app` instance as agent to `jenkins`
4. Setup docker hub account and create public repo.
5. Add dockerhub creds on jenkins
6. Create jenkins pipeline job that checkout app code, runs tests, build docker image and push to docker registry, and then deploys the new image.



