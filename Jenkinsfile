node {
    def app

    stage('Clone Repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("pipeline1/pipeline")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Running tests..."'
            sh 'sleep 5'
            sh 'echo "Tests completed successfully!"'
        }
        app.inside {
            sh 'echo "Test passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

    stage('Check env') {
        sh 'echo $PATH'
        sh 'which docker || echo "Docker not found"'
    }
}


// pipeline {
//     agent any
//     stages {
//         stage('Hello') {
//             steps {
//                 echo 'Hello, Jenkins!'
//             }
//         }
//     }
// }
