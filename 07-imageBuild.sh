
#打包docker镜像 (如果你的镜像仓库中心不是这个,需要修改)
echo "打包docker镜像"


########################

cd /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-eureka

rm -rf *.jar


cp /pan/all_jar/eureka.jar  .

docker build -f Dockerfile -t codingsoldier/eureka-server:latest .
docker tag  codingsoldier/eureka-server:latest localhost:32000/codingsoldier/eureka-server:latest
docker push localhost:32000/codingsoldier/eureka-server:latest

########################
cd /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app01

rm -rf *.jar

cp /pan/all_jar/app01.jar  .

docker build -f Dockerfile -t codingsoldier/app001:latest .
docker tag  codingsoldier/app001:latest localhost:32000/codingsoldier/app001:latest
docker push localhost:32000/codingsoldier/app001:latest

########################
cd /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-app02

rm -rf *.jar


cp /pan/all_jar/app02.jar  .

docker build -f Dockerfile -t codingsoldier/app002:latest .
docker tag  codingsoldier/app002:latest localhost:32000/codingsoldier/app002:latest
docker push localhost:32000/codingsoldier/app002:latest



########################
cd /root/k8s-run-spring-cloud-parent/dockerBuildAndRun/docker-k8s-zuul

rm -rf *.jar

cp /pan/all_jar/zuul.jar  .

docker build -f Dockerfile -t codingsoldier/api-gateway:latest .
docker tag  codingsoldier/api-gateway:latest localhost:32000/codingsoldier/api-gateway:latest
docker push localhost:32000/codingsoldier/api-gateway:latest

