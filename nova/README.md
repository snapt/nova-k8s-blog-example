# Helm Launch Instructions

This guide will help you launch your helm chart from the Nova Auto Join system. This 
allows Kubernetes to scale up and down Nova containers while having them automatically 
apply your LB and WAF profiles.

Learn more on our official Helm guide: https://nova-docs.snapt.net/install_helm.html

### Add the Nova repo
```
helm repo add nova-helm https://snapt.github.io/nova-helm
helm repo update
```

### Launch 
Launch your nova.yaml configuration obtained from https://nova.snapt.net/adcs/auto-join/keys

```
helm install blog-nova -f nova.yaml nova-helm/nova
```

### Scale
Scale up to 3 Nova containers as an example

```
kubectl scale deployments/blog-nova-dpl --replicas=3 -n blog-nova-ns
```

### Get Details
This is especially important as it will give you your external IP. 

```
kubectl get pods,deployments,services -n blog-nova-ns
```
