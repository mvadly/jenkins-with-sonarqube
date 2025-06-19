from jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y unzip wget rsync

RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
RUN unzip sonar-scanner-cli-5.0.1.3006-linux.zip -d /opt
RUN ln -s /opt/sonar-scanner-5.0.1.3006-linux/bin/sonar-scanner /usr/local/bin/sonar-scanner

RUN wget https://go.dev/dl/go1.24.4.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.4.linux-amd64.tar.gz
ENV PATH="/usr/local/go/bin:${PATH}"

RUN mkdir /projects && chmod +r /projects

USER jenkins