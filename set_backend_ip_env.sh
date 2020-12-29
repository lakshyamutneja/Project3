#!/bin/bash
ip=$(curl -H "token:100754a2-c8e8-47f6-acc3-471691e1eb0e" --request GET https://api.memstash.io/values/backend )
echo 'testing'
echo $ip
export API_URL=$ip
