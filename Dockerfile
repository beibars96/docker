FROM centos:7
RUN rm -rf /sbin/packer
RUN yum install telnet -y && \
    yum install elinks -y && \
    yum install wget -y && \
    yum install unzip -y
RUN wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip && \
    unzip  terraform_1.0.0_linux_amd64.zip && \
    mv terraform  /bin
RUN wget https://releases.hashicorp.com/packer/1.5.1/packer_1.5.1_linux_amd64.zip && \
    unzip packer_1.5.1_linux_amd64.zip && \
    mv packer /bin
RUN yum update -y
EXPOSE 80
CMD [ "/usr/bin/sleep", "infinity" ]
