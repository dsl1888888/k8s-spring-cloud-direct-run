
#打包docker镜像 (如果你的镜像仓库中心不是这个,需要修改)
echo "打包docker镜像"


########################
cd /opt/k8s-spring-cloud-direct-run/docker-k8s-eureka/
rm -rf eureka-server.jar 
wget http://5.34.180.96:999/jarfork8s/eureka-server.jar

docker build -f Dockerfile -t codingsoldier/eureka-server:latest .
docker tag  codingsoldier/eureka-server:latest localhost:32000/codingsoldier/eureka-server:latest
docker push localhost:32000/codingsoldier/eureka-server:latest

########################
cd /opt/k8s-spring-cloud-direct-run/docker-k8s-app01
rm -rf app01.jar
wget http://5.34.180.96:999/jarfork8s/app01.jar

docker build -f Dockerfile -t codingsoldier/app001:latest .
docker tag  codingsoldier/app001:latest localhost:32000/codingsoldier/app001:latest
docker push localhost:32000/codingsoldier/app001:latest

########################
cd /opt/k8s-spring-cloud-direct-run/docker-k8s-app02
rm -rf app02.jar
wget http://5.34.180.96:999/jarfork8s/app02.jar

docker build -f Dockerfile -t codingsoldier/app002:latest .
docker tag  codingsoldier/app002:latest localhost:32000/codingsoldier/app002:latest
docker push localhost:32000/codingsoldier/app002:latest



########################
cd /opt/k8s-spring-cloud-direct-run/docker-k8s-zuul/
rm -rf demo-springcloud-zuul-0.0.1-SNAPSHOT.jar 
wget http://5.34.180.96:999/jarfork8s/demo-springcloud-zuul-0.0.1-SNAPSHOT.jar 

docker build -f Dockerfile -t codingsoldier/api-gateway:latest .
docker tag  codingsoldier/api-gateway:latest localhost:32000/codingsoldier/api-gateway:latest
docker push localhost:32000/codingsoldier/api-gateway:latest

