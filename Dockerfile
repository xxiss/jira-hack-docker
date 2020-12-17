FROM atlassian/jira-software:eap-ubuntu-jdk11

ARG TZ="Asia/Shanghai"
ENV TZ=${TZ}

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak && echo "\
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse "\
    > /etc/apt/sources.list

RUN apt-get update && apt-get install -y wget

ENV AGENT_VERSION=1.2.3
ENV JAVA_OPTS="-javaagent:/opt/agent/atlassian-agent.jar ${JAVA_OPTS}"
RUN wget https://gitee.com/pengzhile/atlassian-agent/attach_files/283101/download/atlassian-agent-v${AGENT_VERSION}.tar.gz &&\
    tar zxvf atlassian-agent-v${AGENT_VERSION}.tar.gz -C /opt/ &&\
    mv /opt/atlassian-agent-v${AGENT_VERSION} /opt/agent &&\
    rm -rf atlassian-agent-v${AGENT_VERSION}.tar.gz


