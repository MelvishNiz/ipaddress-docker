FROM debian:latest
LABEL maintainer="Bruno Amaro Almeida | brunoamaro.com"
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app
RUN apt-get update
RUN apt-get upgrade -qy
RUN apt-get install curl -qy
RUN chmod +x run.sh
COPY redsocks.conf /etc/redsocks.conf
ENTRYPOINT /bin/bash run.sh