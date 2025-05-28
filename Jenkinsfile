// node {
//     def app

//     stage('Clone Repository') {
//         checkout scm
//     }

//     stage('Build image') {
//         withEnv(["PATH+DOCKER=/opt/homebrew/bin"]) {  // add docker's directory here
//             script {
//                 app = docker.build("pipeline1/pipeline")
//             }
//         }
//     }

//     stage('Test image') {
//         withEnv(["PATH+DOCKER=/opt/homebrew/bin"]) {
//             sh 'docker inspect -f . pipeline1/pipeline'
//             // Run tests without docker.image(...).inside if docker CLI needed
//             sh 'echo "Run your tests here without docker inside"'
//             }
//         }

//     stage('Push image') {
//         withEnv(["PATH+DOCKER=/opt/homebrew/bin"]) {
//             docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
//                 app.push("${env.BUILD_NUMBER}")
//                 app.push("latest")
//              }
//         }
//     }   

//     stage('Check PATH') {
//         steps {
//             sh 'echo $PATH'
//             sh 'which docker || echo "docker not found"'
//         }
// }
// }


// // pipeline {
// //     agent any
// //     stages {
// //         stage('Hello') {
// //             steps {
// //                 echo 'Hello, Jenkins!'
// //             }
// //         }
// //     }
// // }

// node {
//     def app

//     stage('Clone Repository') {
//         checkout scm
//     }

//     stage('Build image') {
//         withEnv(["PATH+DOCKER=/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin"]) {
//             script {
//                 app = docker.build("pipeline1/pipeline")
//             }
//         }
//     }

//     stage('Test image') {
//         withEnv(["PATH+DOCKER=/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin"]) {
//             sh 'docker inspect -f . pipeline1/pipeline'
//             sh 'echo "Run your tests here without docker inside"'
//         }
//     }

//     stage('Push image') {
//         withEnv(["PATH+DOCKER=/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin"]) {
//             docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
//                 app.push("${env.BUILD_NUMBER}")
//                 app.push("latest")
//             }
//         }
//     }

//     stage('Check PATH') {
//         sh 'echo $PATH'
//         sh 'which docker || echo "docker not found"'
//     }
// }
pipeline {
    agent any
    stages {
        stage('Check PATH') {
            steps {
                sh 'echo $PATH'
                sh 'which docker || echo "docker not found"'
                sh 'docker --version'
            }
        }
    }
}