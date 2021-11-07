# Create a key and alias for use in the SSE S3 bucket
aws kms create-key --description "S3 SSE Key" --output json
aws kms create-alias --alias-name alias/s3-sse-key --target-key-id **ARN OF KEY HERE**