# Docker_Workshop
```
Dockerfile 내용
FROM ubuntu # 우분투 위에서 동작
RUN apt update # apt update 실행
RUN apt install -y nginx # nginx 설치
CMD ["nginx", "-g", "daemon off;"] # nginx 실행명령어

Dockerfile 빌드 명령어
$ docker build --tag 08youjin12/docker_workshop .

Docker run 명령어
$ docker run -it --name n1 -p 8888:80 08youjin12/docker_workshop

```