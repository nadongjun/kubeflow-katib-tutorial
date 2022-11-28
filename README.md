# 환경설정
kubernetes-version=v1.21.7
kubeflow=v1.4.0

sudo usermod -aG docker $USER && newgrp docker

wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.10.0/kustomize_v3.10.0_linux_amd64.tar.gz

# Command

minikube delete
minikube start --kubernetes-version=v1.21.7 --cpus 8 --memory 12288
while ! kustomize build example | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done
kubectl get pods -A
kubectl port-forward svc/istio-ingressgateway -n istio-system 8888:80


# Notebook
https://codelabs.developers.google.com/codelabs/cloud-kubeflow-minikf-kale-katib#3
jupyter-kale:f20978e

# 다른버전
1. https://krew.sigs.k8s.io/docs/user-guide/setup/install/
2. https://hotorch.tistory.com/m/150