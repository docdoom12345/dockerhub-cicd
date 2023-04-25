FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install apache2 -y
EXPOSE 80
COPY index.html /var/www/html/
COPY test.sh /test.sh
ENTRYPOINT /test.sh ; /bin/bash
