pipeline{
    agent any
    stages{
        stage("Build Image"){
            steps{
                sh "docker build -t azure-container-image ."
            }
            post{
                always{
                    echo "Docker build completed"
                }
                success{
                    echo "Docker build completed - Successfully"
                }
                failure{
                    echo "Docker build completed - Failed"
                }
            }
        }
        stage("Run Image"){
            steps{
                sh "docker stop azure-container-instance"
                sh "docker rm azure-container-instance"
                sh "docker run -d -p 80:80 --name azure-container-instance azure-container-image"
            }
            post{
                always{
                    echo "Docker run completed"
                }
                success{
                    echo "Docker run completed - Successfully"
                }
                failure{
                    echo "Docker run completed - Failed"
                }
            }
        }
    }
    post{
        always{
            echo "Build completed"
        }
        success{
            echo "Build completed - Successfully"
        }
        failure{
            echo "Build completed - Failed"
        }
    }
}