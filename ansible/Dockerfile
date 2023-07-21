FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible

# Create a new user `ansibleuser` and add it to the sudo group
RUN useradd -m ansibleuser && echo "ansibleuser:ansibleuser" | chpasswd && adduser ansibleuser sudo

RUN echo "ansibleuser ALL=(ALL:ALL) NOPASSWD: ALL" | (EDITOR="tee -a" visudo)

USER ansibleuser
WORKDIR /home/ansibleuser/

ENV USER=ansibleuser

#CMD [ "ansible-playbook", "/setup/setup.yml"]

CMD [ "bash" ]
