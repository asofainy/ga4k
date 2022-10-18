
helm repo add gitlab https://charts.gitlab.io

helm delete --namespace gitlab gitlab-runner-kubernetes

helm install --namespace gitlab gitlab-runner-kubernetes -f kubernetes_values.yml gitlab/gitlab-runner
