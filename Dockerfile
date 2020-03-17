FROM fedora
# it will be the base images
MAINTAINER pravinss.aec@gmail.com ,8884766830
# dev info for people to connect
RUN yum install httpd -y
#it will install httpd
WORKDIR /var/www/html/
#this is changing my current working directory to documentroot of COPY
COPY . .
#copy can only copy DATa from current local location to docker
EXPOSE 80
#it will tell docker image to use port 80 frpm application 
#CMD httpd -DFOREGROUND
#it will start parent process as http applcation serve
#cmd can be replaced ny docker user
ENTRYPOINT httpd -DFOREGROUND
#same as cmd by we can not replace it by argument
# so in any case it should start in what every way comapny what or de# want.


