#!/bin/bash 

namespace=production

helm repo add gitlab https://charts.gitlab.io

helm delete --namespace $namespace gitlab-runner-kubernetes

helm install --namespace $namespace gitlab-runner-kubernetes \
-f kubernetes_values.yml $namespace gitlab-runner
