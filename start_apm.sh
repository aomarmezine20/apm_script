#!/bin/bash

java -javaagent:/home/azureuser/filebeat-springboot/test_spring_boot/elastic-apm-agent.jar \
     -Delastic.apm.service_name=my-service-name \
     -Delastic.apm.secret_token= \
     -Delastic.apm.server_url=http://20.107.172.232:8200 \
     -Delastic.apm.environment=my-environment \
     -Delastic.apm.application_packages=org.example \
     -jar /home/azureuser/filebeat-springboot/test_spring_boot/target/test_spring_boot-0.0.1-SNAPSHOT.jar
