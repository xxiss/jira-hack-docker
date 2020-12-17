
# 使用说明


### How to hack jira

```
docker exec <container-name> java -jar /opt/agent/atlassian-agent.jar \
    -p jira \
    -m abc@gmail.com \
    -n abc@gmail.com \
    -o http://website \
    -s you-server-id-xxxx
```

### How to hack jira plugin

.eg I want to use BigGantt plugin

1. Install BigGantt from jira marketplace.
2. Find App Key of BigGantt is : eu.softwareplant.biggantt
3. Execute : ` docker exec <container-name> java -jar /opt/agent/atlassian-agent.jar -p eu.softwareplant.biggantt -m abc@gmail.com -n abc@gmail.com -o http://website -s you-server-id-xxxx `
4. Paste your license


### Document: [atlassian-agent](https://gitee.com/pengzhile/atlassian-agent)








