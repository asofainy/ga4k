#!/bin/bash

namespace="gitlab"
agent_name="agent-smith"
token="to_NzTshubUAzdWWgHPzxMKuTafmrUebf2cVTkr9Km_RydgUJw"


helm uninstall --namespace $namespace $agent_name

helm repo add gitlab https://charts.gitlab.io
helm repo update
helm upgrade --install agent-smith gitlab/gitlab-agent \
    --namespace $namespace \
    --set image.tag=v15.4.0 \
    --set config.token=$token \
    --set config.kasAddress=ws://gitlab-service.gitlab.svc.cluster.local/-/kubernetes-agent/