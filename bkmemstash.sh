#!/bin/bash
ipaddress=$( tail -n 1 inventory )
echo $ipaddress

curl -H "Content-Type: text/plain" -H "token: ae92a07f-b2f5-43bf-a767-e83093dd50cf" --request PUT --data $ipaddress https://api.memstash.io/values/backend
curl -H "Content-Type: text/plain" -H "token: ae92a07f-b2f5-43bf-a767-e83093dd50cf" --request PUT --data "arn:aws:s3:::udapeople-${CIRCLE_WORKFLOW_ID:0:7}" https://api.memstash.io/values/backend
#curl -H "Content-Type: text/plain" -H "token: ae92a07f-b2f5-43bf-a767-e83093dd50cf" --request PUT --data "arn:aws:s3:::udapeople-7488448-${CIRCLE_WORKFLOW_ID:0:7}" https://api.memstash.io/values/backend
#curl -H "Content-Type: text/plain" -H "token: ae92a07f-b2f5-43bf-a767-e83093dd50cf" --request PUT --data "54.86.59.146" https://api.memstash.io/values/backend