node("python-docker") {
    def app

    stage('Clone repository') {
        git 'https://github.com/kloudlab-trainings/capstone-project1.git'
    }

    stage('Build Docker image') {   
        app = docker.build("devopsfarm/kloudlab-capstone-flaskapp:${env.BUILD_ID}")
    }
 
    stage('Run Tests') {
        sh 'pip install -r requirements.txt' // Install project dependencies
        sh 'python -m unittest discover -s tests' // Run tests
    }
    stage('Push to Docker Hub') {
        withDockerRegistry([credentialsId: 'dockerhub_credentials', url: 'https://registry.hub.docker.com']) {
            app.push()
        }
    }
}
