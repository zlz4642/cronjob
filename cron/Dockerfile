FROM     ubuntu:20.04
ENV      DEBIAN_FRONTEND noninteractive
RUN      apt-get update && apt-get install -y sudo
RUN      chmod +w /etc/sudoers
RUN      echo 'user ALL=(ALL) NOPASSWD:ALL' | tee -a /etc/sudoers
RUN      chmod -w /etc/sudoers
RUN      apt-get install -y curl
RUN      curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN      curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
RUN      install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
COPY     cronjob.sh /
CMD     ["/bin/bash","chmod 775 /cronjob.sh"]
