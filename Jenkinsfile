node {
    stage('Clone Repository') {
        checkout scm
    }

    stage('Build image') {
        // Run docker build using shell with full path to docker binary
        sh '/opt/homebrew/bin/docker build -t pipeline1/pipeline .'
    }

    stage('Test image') {
        sh '/opt/homebrew/bin/docker inspect -f . pipeline1/pipeline'
        sh 'echo "Run your tests here without docker inside"'
    }

    stage('Push image') {
        withEnv(["PATH=/opt/homebrew/bin:${env.PATH}"]) {
            sh '/opt/homebrew/bin/docker login -u your-username -p your-password'
            sh '/opt/homebrew/bin/docker push pipeline1/pipeline'
        }
    }

    stage('Check PATH') {
        sh 'echo $PATH'
        sh 'which docker || echo "docker not found"'
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
