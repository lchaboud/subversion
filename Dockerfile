FROM ubuntu
MAINTENER lchaboud

RUN apt-get install subversion
RUN mkdir -p /var/svn
RUN chmod +x /etc/init.d/svnserve
ADD svnserve /etc/init.d/svnserve
RUN update-rc.d svnserve defaults

CMD /bin/bash