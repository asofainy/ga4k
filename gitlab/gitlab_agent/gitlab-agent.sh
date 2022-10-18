#!/bin/bash

namespace="gitlab"
agent_name="agent-smith"
token="53oiyjVifPwdWzjeczYuswtrsNWQ3stPrs6Rfxys_TRqogJmwA"

helm delete --namespace gitlab $agent_name

helm uninstall --namespace $namespace $agent_name

helm repo add gitlab https://charts.gitlab.io
helm repo update
helm upgrade --install $agent_name gitlab/gitlab-agent \
    --namespace $namespace \
    --set image.tag=v15.4.0 \
    --set config.token=$token \
    --set config.kasAddress=ws://gitlab-service.gitlab.svc.cluster.local/-/kubernetes-agent/