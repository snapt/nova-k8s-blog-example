kubectl apply -f ./namespace.yaml && \
    kubectl apply -f ./blog.yaml && \
    kubectl apply -f ./blog-headless-service.yaml && \
    echo "----------" \ &&
    kubectl get pods,deployments,services -n blog

