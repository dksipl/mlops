// Declarative pipelines must be enclosed with a "pipeline" directive.
pipeline {
    // This line is required for declarative pipelines. Just keep it here.
    agent any

    // This section contains environment variables which are available for use in the
    // pipeline's stages.
    environment {
        docker_repo_uri = ""
		task_def_arn = ""
        cluster = ""
        exec_role_arn = ""
    }
    
    // Here you can define one or more stages for your pipeline.
    // Each stage can execute one or more steps.
    stages {
        // This is a stage.
        stage('1') {
            steps {
                // This is a step of type "echo". It doesn't do much, only prints some text.
                echo 'This is a sample stage'
                // For a list of all the supported steps, take a look at
                // https://jenkins.io/doc/pipeline/steps/ .
            }
	}
	stage('2') {
	    steps {
                // This is a step of type "echo". It doesn't do much, only prints some text.
                echo 'build docker image'
                // For a list of all the supported steps, take a look at
                // https://jenkins.io/doc/pipeline/steps/ .
		sh 'docker build -t python-test .'
            }
	}
	stage('3') {
	    steps {
                // This is a step of type "echo". It doesn't do much, only prints some text.
                echo 'login and push to docker hub'
                // For a list of all the supported steps, take a look at
                // https://jenkins.io/doc/pipeline/steps/ .
		sh 'docker tag python-test dksipl/python-test'
		sh 'docker login -u dksipl -p Dhruv.samyak'
		sh 'docker push dksipl/python-test'
	    }
        }
    }
}
