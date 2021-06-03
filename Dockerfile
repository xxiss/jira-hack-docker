ARG JIRA_VERSION=8.16
FROM atlassian/jira-software:${JIRA_VERSION}-ubuntu-jdk11

RUN apt-get update && apt-get install -y wget

ARG AGENT_VERSION=1.2.3
ENV JAVA_OPTS="-javaagent:/opt/agent/atlassian-agent.jar ${JAVA_OPTS}"
RUN wget -O atlassian-agent.tar.gz https://gitee.com/pengzhile/atlassian-agent/attach_files/283101/download/atlassian-agent-v${AGENT_VERSION}.tar.gz &&\
    tar zxvf atlassian-agent.tar.gz -C /opt/ &&\
    mv /opt/atlassian-agent-v${AGENT_VERSION} /opt/agent &&\
    rm -f atlassian-agent.tar.gz

