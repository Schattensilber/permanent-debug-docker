FROM jenkins/jenkins:2.263.4

USER root

# Required for openssh-server
RUN mkdir /var/run/sshd

RUN apt update && \
	apt install -y supervisor maven openjdk-11-jdk openssh-server htop

EXPOSE 22

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD [ "/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf" ]
