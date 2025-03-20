FROM nginx
WORKDIR /home/
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./hello_serv.c .
COPY ./build.sh .
RUN apt-get update && apt-get install gcc libfcgi-dev spawn-fcgi -y
ENTRYPOINT ["./build.sh"]