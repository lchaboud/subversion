FROM ubuntu
MAINTENER lchaboud

RUN apt-get install subversion -y
RUN mkdir -p /var/svn
ADD svnserve /etc/init.d/svnserve
RUN chmod +x /etc/init.d/svnserve
RUN update-rc.d svnserve defaults

CMD /bin/bash
