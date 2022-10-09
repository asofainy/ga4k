#!/bin/bash 
 
helm install --namespace gitlab gitlab-runner-kubernetes \
-f kubernetes_values.yml gitlab/gitlab-runner
