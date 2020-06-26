# Image Pull from DockerHub
docker pull 08youjin12/docker_workshop
# Image Deploy
kubectl run myworkshop --image=08youjin12/docker_workshop --port=80
# Pods 20
kubectl.exe scale deployment myworkshop --replicas=20
# Service Port 80
kubectl.exe expose deployment/myworkshop --type="NodePort" --port 80