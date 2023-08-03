# Base image with necessary dependencies
FROM amazonlinux:2

# Install AWS CLI and other required packages
RUN yum update -y && \
    yum install -y awscli curl && \
    yum clean all

# Set environment variables for AWS credentials
ENV AWS_ACCESS_KEY_ID=AKIA2XPFTWWTOPN2AXRY
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_DEFAULT_REGION=us-west-1

# Copy the script to fetch token from IMDS
COPY fetch_token.sh /

# Set execute permissions for the script
RUN chmod +x /fetch_token.sh

# Set the entrypoint to run the script
ENTRYPOINT ["/fetch_token.sh"]
