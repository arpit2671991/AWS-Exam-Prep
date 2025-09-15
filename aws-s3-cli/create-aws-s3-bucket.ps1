# Understand these Amazon S3 terms:

# Bucket – A top-level Amazon S3 folder.

# Prefix – An Amazon S3 folder in a bucket.

# Object – Any item that's hosted in an Amazon S3 bucket.

# Use the s3 mb command to make a bucket. Bucket names must be globally unique (unique across all of Amazon S3) and should be DNS compliant.

# Bucket names can contain lowercase letters, numbers, hyphens, and periods. Bucket names can start and end only with a letter or number, and cannot contain a period next to a hyphen or another period

# # Script to create an S3 bucket
# param (
#     [string]$bucketName,
#     [string]$region = "us-east-1"
# )
# if (-not $bucketName) {
#     Write-Host "Usage: .\create-aws-s3-bucket.ps1 -bucketName <your-unique-bucket-name> [-region <aws-region>]"
#     exit
# }
# Write-Host "Creating S3 bucket: $bucketName in region: $region"
# aws s3 mb "s3://$bucketName" --region $region
# if ($LASTEXITCODE -eq 0) {
#     Write-Host "Bucket $bucketName created successfully."
# } else {
#     Write-Host "Failed to create bucket $bucketName."
# }
# . Bucket names must be between 3 and 63 characters long.

aws s3 mb s3://aws-s3-demo-bucket-15-9-25 --region us-east-1




