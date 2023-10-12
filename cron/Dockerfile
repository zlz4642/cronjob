FROM     ubuntu:20.04
ENV      DEBIAN_FRONTEND noninteractive
RUN      apt-get update && apt-get install -y curl
RUN      curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN      chmod +x kubectl
RUN      mv kubectl /usr/local/bin/
RUN      mkdir /.kube/
COPY     cronjob.sh / && config /.kube/
CMD     ["/bin/bash","chmod 775 /cronjob.sh"]
