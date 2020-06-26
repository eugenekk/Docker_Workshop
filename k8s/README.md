# Kubernetes_Workshop
```
## k8s.sh 내용
# Image Pull from DockerHub (dockerhub의 이미지 가져오기)
docker pull 08youjin12/docker_workshop

# Image Deploy
kubectl run myworkshop --image=08youjin12/docker_workshop --port=80
(# Windows User의 경우 명령어 앞에 winpty 추가
winpty kubectl run myworkshop --image=08youjin12/docker_workshop -port=80)

# Pods 20 
kubectl.exe scale deployment myworkshop --replicas=20
# Service Port 80
kubectl.exe expose deployment/myworkshop --type="NodePort" --port 80

##k8s.sh 실행 방법
#k8s.sh 파일을 다운받아서 해당 위치에서 아래 명령어 실행
./k8s.sh

##실행 결과를 확인하는 scripts
kubectl get services
kubectl get deployments
kubectl get pods
```