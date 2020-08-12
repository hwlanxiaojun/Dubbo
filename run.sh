 #!/bin/bash
    
nohup java -Xms256M -javaagent:iast_agent_s.jar -jar dubbo-spring-boot-provider2-2.7.3.jar >log1.txt 2>&1  &
sleep 50
nohup java -Xms256M -javaagent:iast_agent_s.jar -jar dubbo-spring-boot-provider-2.7.3.jar >> log2.txt 2>&1  &
sleep 50
java -javaagent:iast_agent_s.jar -jar dubbo-spring-boot-consumer-2.7.3.jar
