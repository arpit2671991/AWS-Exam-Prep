# Set Environment Variables for AWS Access Keys in Windows Powershell

$Env:AWS_ACCESS_KEY_ID=""
$Env:AWS_SECRET_ACCESS_KEY=""
$Env:AWS_REGION="us-east-1"
$Env:AWS_CLI_AUTO_PROMPT="on-partial"
$Env:AWS_DEFAULT_OUTPUT="json"

# Verify the environment variables are set
aws sts get-caller-identity