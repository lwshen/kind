#!/bin/bash

# Source: kindest/node:v1.23.12
docker pull registry.cn-shanghai.aliyuncs.com/formirror/mirror:kindest.node.v1.23.12
docker tag registry.cn-shanghai.aliyuncs.com/formirror/mirror:kindest.node.v1.23.12 kindest/node:v1.23.12

kind create cluster --image kindest/node:v1.23.12 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
