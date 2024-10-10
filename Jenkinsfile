pipeline {
    agent any

    stages {
        stage('Deploy to Kubernetes') {
            steps {
                withCredentials([string(credentialsId: 'k8s-token', variable: 'KUBE_TOKEN')]) {
                    sh """
                    # Configurar kubectl
                    kubectl config set-credentials jenkins-user --token=$KUBE_TOKEN
                    kubectl config set-cluster k8s-cluster --server=https://127.0.0.1:16443 --insecure-skip-tls-verify=true
                    kubectl config set-context default --cluster=k8s-cluster --user=jenkins-user
                    kubectl config use-context default
                    
                    # Realizar o rollout
                    kubectl rollout restart deployment nginx-deployment
                    """
                }
            }
        }
    }
}
