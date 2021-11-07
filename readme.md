Creates a key for use with the S3 bucket using SSE

1. Run scripts below:
aws kms create-key --description "S3 SSE Key" --output json
aws kms create-alias --alias-name alias/s3-sse-key --target-key-id **ARN OF KEY HERE**
2. Use ARN of key for the --target-id 
3. Adjust name of bucket (random #s)
4. Terraform plan
5. Terraform apply