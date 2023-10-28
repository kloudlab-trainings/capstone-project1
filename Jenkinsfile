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
        sh """
            docker login "$docker_username" "$docker_password"  https://registry.hub.docker.com
            docker push "$image_tag"
           """
    }

    stage("deploy app"){
        build "deploy_flask_app"
    }
          
}
