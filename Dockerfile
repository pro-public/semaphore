FROM ansiblesemaphore/semaphore:latest
LABEL MAINTAINER = digitalnode.ar@gmail.com
USER root
#
ENV PACKAGE="bash curl git ansible mysql-client openssh-client openssh sshpass rsync"
RUN apk add --update --no-cache ${PACKAGE}
#
ADD conf/gitconfig /etc/gitconfig
ADD conf/ansible.cfg /etc/ansible/ansible.cfg
ADD semaphore/config.json /etc/semaphore/config.json
#RUN chown -R semaphore:root /etc/gitconfig /etc/ansible /etc/semaphore
