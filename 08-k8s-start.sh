
#起跑服务(有顺序的,先中心,再启动其他;你的文件放在哪里,你就指定你的路径).
echo "起跑服务(有顺序的,先中心,再启动其他)."

microk8s.kubectl apply -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-eureka/k8s-eureka-server.yaml
microk8s.kubectl apply -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app01/k8s-app01.yaml
microk8s.kubectl apply -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app02/k8s-app02.yaml
microk8s.kubectl apply -f /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-zuul/k8s-api-gateway.yaml
