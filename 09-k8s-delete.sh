
#删除服务..
echo "删除服务."

microk8s.kubectl delete -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-eureka/k8s-eureka-server.yaml
microk8s.kubectl delete -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app01/k8s-app01.yaml
microk8s.kubectl delete -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app02/k8s-app02.yaml
microk8s.kubectl delete -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-zuul/k8s-api-gateway.yaml
