
# Jira Hack

详细中文教程请看这里[Document](https://blog.sssn.cc/post/docker-jira-hack/)


### How to hack jira

```
docker-compose exec jira java -jar /opt/agent/atlassian-agent.jar -p jira -m <email> -n <name> -o <http://website> -s <your-server-id-xxxx>
```

### How to hack jira plugin

.eg I want to use BigGantt plugin

1. Install BigGantt from jira marketplace.
2. Find App Key of BigGantt is : eu.softwareplant.biggantt
3. Execute : `docker-compose exec jir java -jar /opt/agent/atlassian-agent.jar -p eu.softwareplant.biggantt -m <email> -n <name> -o <http://website> -s <you-server-id-xxxx> `
4. Paste your license


