FROM debian:10.5
LABEL maintainer="Lakr1m0za"
RUN apt-get update && apt-get upgrade \
    && apt-get install git -y \
    && mkdir /app \
    && git clone https://github.com/lakr1m0za/lakr1m0za.git /app
WORKDIR /app/lakr1m0za/Docker_bash_server
EXPOSE 8080
CMD ["bash", "bash_server_1.sh"]
