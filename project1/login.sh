#!/bin/bash 



aws   eks   update-kubeconfig   --name    my-cluster  --region  us-east-1 
kubectl get nodes 
kubectl get ns   
kubectl get pods -n kube-system

# bash login.sh 