S3_DATA_BUCKET=shuntagami-demo-data
STACK_NAME=serverless-sqs-dynamo-demo

aws s3 rm s3://$S3_DATA_BUCKET/data.csv # and any other objects

aws cloudformation delete-stack \
  --stack-name $STACK_NAME
