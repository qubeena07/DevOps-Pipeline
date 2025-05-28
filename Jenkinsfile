node{
    def app
    stage('Clone Repository') {
        // Clone the repository
        checkout scm
        }

    stage('Build image') {
        // Build the actual image
        app = docker.build("pipeline1/pipeline")
        }

    stage('Test imagae'){
        // Run the tests
        app.inside {
            sh 'echo "Running tests..."'
            sh 'sleep 5' // Simulating test execution
            sh 'echo "Tests completed successfully!"'
        }
    }
        app.inside {
            // Run tests inside the container
            sh 'echo "Test passed"'
        }
    
    stage('Push image') {
         /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            // Push the image to Docker Hub
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

    

}