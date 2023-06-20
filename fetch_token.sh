# Set environment variables with the temporary credentials
export AWS_ACCESS_KEY_ID=$(echo $TEMP_CREDENTIALS | awk '{print $1}')
export AWS_SECRET_ACCESS_KEY=$(echo $TEMP_CREDENTIALS | awk '{print $2}')
export AWS_SESSION_TOKEN=$(echo $TEMP_CREDENTIALS | awk '{print $3}')

# Run your desired commands or applications that require AWS credentials
# For example, you can run the AWS CLI command to list S3 buckets
aws s3 ls