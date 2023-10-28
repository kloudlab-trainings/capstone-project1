node("python&&docker") {
    def image_tag="devopsfarm/kloudlab-capstone-flaskapp:${env.BUILD_ID}"

    stage('Clone repository') {
        checkout scmGit(branches: [[name: '*/main']], 
                        extensions: [], 
                        userRemoteConfigs: [[url: 'https://github.com/kloudlab-trainings/capstone-project1.git']])
    }

    stage('Build Docker image') {
        sh """
            docker build -t "$image_tag" .
            """
    }
 
    stage('Run Tests') {
        sh """
            pip install -r requirements.txt 
            python -m unittest discover -s tests
            """
    }
    stage('Push to Docker Hub') {
        withCredentials([usernamePassword(credentialsId: 'dockerhub_credentials', passwordVariable: 'docker_password', usernameVariable: 'docker_username')]) {
            sh """
                docker login -u "$docker_username" -p "$docker_password" 
                docker push "$image_tag"
            """
        }
    }

    stage("deploy app"){
        build job: 'deploy-flask-app', 
        parameters: [string(name: 'IMAGE_TAG', value: "${env.BUILD_ID}")]
    }
          
}
