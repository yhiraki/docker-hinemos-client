from centos:7

RUN echo -e '#!/bin/bash\necho Disabled' > /usr/sbin/getenforce && \
	chmod a+x /usr/sbin/getenforce && \
	curl -L https://ja.osdn.net/dl/hinemos/hinemos-web-5.0.4-1.el7.x86_64.rpm -o hinemos.rpm && \
	yum install -y hinemos.rpm jre-1.7.0 && \
	rm -f hinemos.rpm

RUN echo -e "#!/bin/bash\n/opt/hinemos_web/bin/tomcat_start.sh && while true; do sleep 100; done" \
	> /start.sh && \
	chmod 755 /start.sh

CMD ["/start.sh"]
