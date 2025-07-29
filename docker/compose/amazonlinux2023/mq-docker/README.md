# 

https://developer.ibm.com/tutorials/mq-develop-mq-rest-api/

## Step 3. Put a message on the queue using cURL
curl -i -k https://localhost:9443/ibmmq/rest/v3/messaging/qmgr/QM1/queue/DEV.QUEUE.1/message -X POST -u app:appPassword -H "ibm-mq-rest-csrf-token: blank" -H "Content-Type: text/plain;charset=utf-8" -d "Hello World"

## Step 4. Using the IBM MQ REST API to consume a message from the queue
curl -i -k https://localhost:9443/ibmmq/rest/v3/messaging/qmgr/QM1/queue/DEV.QUEUE.1/message -X DELETE -u app:appPassword -H "ibm-mq-rest-csrf-token: blank"

## Step 5. (Optional) Use the Swagger UI to interact with the MQ messaging REST APIs
+ mqweb.xml is copied from [/opt/mqm/web/mq/etc/mqweb.xml]
+ Then added [<feature>apiDiscovery-1.0</feature>] to [mqweb.xml] to switch on the API Discovery feature
+ Use https://localhost:9443/api/explorer/

