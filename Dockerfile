FROM softinstigate/maven-aws:latest

LABEL maintainer="Simplaex <rnd@simplaex.com>"
RUN echo "sa" > /tmp/foo.txt
RUN apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce=18.03.1~ce-0~$(. /etc/os-release; echo "$ID")
