# Docker_Workshop
```
# Dockerfile 내용
FROM ubuntu # 우분투 위에서 동작
MAINTAINER 08youjin12@gmail.com # 관리자 연락처

RUN apt update # apt update 실행
RUN apt install -y nginx # nginx 설치
CMD ["nginx", "-g", "daemon off;"] # nginx 실행명령어

EXPOSE 80
EXPOSE 443

# Dockerfile 빌드 명령어
$ docker build --tag 08youjin12/docker_workshop .

# Docker run 명령어
$ docker run -it --name n1 -p 8888:80 08youjin12/docker_workshop

# 실행결과 확인
$ docker ps -a
CONTAINER ID        IMAGE                                COMMAND                  CREATED             STATUS                      PORTS
   NAMES
12fb57242fc2        08youjin12/docker_workshop           "nginx -g 'daemon of…"   2 hours ago         Up 2 hours                  0.0.0.0:8888->80/tcp  
   n1
```