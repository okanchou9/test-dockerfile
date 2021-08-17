#FROM ubuntu:20.04
  
#RUN apt-get update && apt-get install -y openssh-server iperf stress-ng fio net-tools wget time sysbench
#RUN mkdir /var/run/sshd
#RUN echo 'root:test123' | chpasswd
#RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
#RUN sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
  
## SSH login fix. Otherwise user is kicked off after login
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
  
#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
 
#EXPOSE 2222
#CMD ["/usr/sbin/sshd", "-D"]

#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM ubuntu:20.04
  
RUN apt-get update && apt-get install -y openssh-server iperf stress-ng fio net-tools wget time sysbench
RUN mkdir /var/run/sshd
RUN echo 'root:test123' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
  
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
  
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
 
EXPOSE 2222
CMD ["/usr/sbin/sshd", "-D"]
