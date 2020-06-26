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
kubectl get deployments
kubectl get services
kubectl get pods

## 실행 결과 확인
$ kubectl.exe get deployments | grep myworkshop
myworkshop   20/20   20           20          43m

$ kubectl.exe get services | grep myworkshop
myworkshop   NodePort    10.103.25.158   <none>        80:31622/TCP   43m

$ kubectl.exe get pods | grep myworkshop
myworkshop-84888b794d-4474n   1/1     Running     0          43m
myworkshop-84888b794d-5ph4p   1/1     Running     0          43m
myworkshop-84888b794d-6c4mf   1/1     Running     0          43m
myworkshop-84888b794d-7h98w   1/1     Running     0          43m
myworkshop-84888b794d-7jw4n   1/1     Running     0          44m
myworkshop-84888b794d-7xbml   1/1     Running     0          43m
myworkshop-84888b794d-c5qx4   1/1     Running     0          43m
myworkshop-84888b794d-czxrf   1/1     Running     0          43m
myworkshop-84888b794d-fzq4b   1/1     Running     0          43m
myworkshop-84888b794d-ghzmw   1/1     Running     0          43m
myworkshop-84888b794d-gnsqw   1/1     Running     0          43m
myworkshop-84888b794d-gwhxc   1/1     Running     0          43m
myworkshop-84888b794d-hwtjf   1/1     Running     0          43m
myworkshop-84888b794d-jcjtz   1/1     Running     0          43m
myworkshop-84888b794d-lf74n   1/1     Running     0          43m
myworkshop-84888b794d-lqcxm   1/1     Running     0          43m
myworkshop-84888b794d-n5869   1/1     Running     0          43m
myworkshop-84888b794d-qd7rz   1/1     Running     0          43m
myworkshop-84888b794d-rz56j   1/1     Running     0          43m
myworkshop-84888b794d-xdnbz   1/1     Running     0          43m

```