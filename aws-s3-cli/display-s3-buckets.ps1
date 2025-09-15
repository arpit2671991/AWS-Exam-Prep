# following script lists all S3 buckets in your AWS account
aws s3 ls

# following command all objects in a specific S3 bucket
# aws s3 ls s3://your-bucket-name

# filter the previous command by prefix (folder)
# aws s3 ls s3://your-bucket-name/your-prefix/

# display bucket in region
#aws s3 ls --region us-east-2

#sort maximum 100 buckets
#aws s3 ls --max-items 100 --page-size 100