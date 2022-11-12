#!/usr/bin/env bash

# Integration tests: Produces SQS events that trigger Lambda
# Events contain CRUD commands for DynamoDB

#set -x
export TABLE_NAME="serverless-sqs-dynamo-demo-DemoTable-1TZ2RR5Q0V074"

#pushd iot_api_to_dynamodb || exit

ls -alh

# local testing (All CRUD functions)
sam local invoke PostMessageFunction \
  --event lambda_apigtw_to_dynamodb/events/event_postMessage.json

sam local invoke GetMessageFunction \
  --event lambda_apigtw_to_dynamodb/events/event_getMessage.json

sam local invoke GetMessagesFunction \
  --event lambda_apigtw_to_dynamodb/events/event_getMessages.json

sam local invoke PutMessageFunction \
  --event lambda_apigtw_to_dynamodb/events/event_putMessage.json

sam local invoke DeleteMessageFunction \
  --event lambda_apigtw_to_dynamodb/events/event_deleteMessage.json
