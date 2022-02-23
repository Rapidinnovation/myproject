echo "Configuring AWS profile" \
    && echo aws --version \
    && aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID} --profile aws-prod \
    && aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY} --profile aws-prod \
    && aws configure set region ${AWS_REGION} --profile aws-prod \
    && aws configure set output json --profile aws-prod \
    && echo "Get TenFinance Secrets from AWS Secrets Manager" \
    && aws secretsmanager get-secret-value --secret-id ${TENFINANCE_SECRETS_ID} --version-stage AWSCURRENT --profile aws-prod > /root/tmp_secrets
