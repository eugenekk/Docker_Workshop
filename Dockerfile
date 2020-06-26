FROM ubuntu
MAINTAINER 08youjin12@gmail.com

RUN apt update 
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
EXPOSE 443