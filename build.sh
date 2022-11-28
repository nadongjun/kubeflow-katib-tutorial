#!/bin/bash

echo "실행 전 k8s / kubeflow 설치 확인"


sudo apt-get update

sudo apt install npm

npm install -g k8ss

k8ss switch --namespace=kubeflow-user-example-com

kubectl apply -f random-example.yaml