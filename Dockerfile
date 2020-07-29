FROM azul/zulu-openjdk:7u222

RUN apt-get update && \
  apt-get install wget zip -y && \
  apt-get clean

RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2am-1.9.1.zip && \
    unzip /opt/wso2am-1.9.1.zip -d /opt && \
    rm /opt/wso2am-1.9.1.zip

ENV JAVA_HOME /usr/lib/jvm/zulu-7-amd64

EXPOSE 9443 9763 8243 8280 10397 7711

ENTRYPOINT ["/opt/wso2am-1.9.1/bin/wso2server.sh"]

