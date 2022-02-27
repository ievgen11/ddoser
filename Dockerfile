FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y curl

ADD main.sh /usr/local/bin/main.sh
ADD sources.txt /usr/local/bin/sources.txt

CMD ["usr/local/bin/main.sh"]