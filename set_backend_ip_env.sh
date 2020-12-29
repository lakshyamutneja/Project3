#!/bin/bash
ip=$(curl -H "token: ae92a07f-b2f5-43bf-a767-e83093dd50cf" --request GET https://api.memstash.io/values/backend )
echo 'testing'
echo $ip
export API_URL=$ip
