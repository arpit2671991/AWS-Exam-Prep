 # DELETE BUCKET
# aws s3 rb s3://your-bucket-name --force
# The --force option deletes all objects in the bucket before removing the bucket itself.
# Note: You cannot delete a bucket that contains versioned objects without first deleting all versions of those objects.

# Example to delete a bucket named "aws-s3-demo-bucket-15-9-25"
aws s3 rb s3://aws-s3-demo-bucket-15-9-25

# --- IGNORE ---

# The --force option deletes all objects in the bucket before removing the bucket itself.
# Note: You cannot delete a bucket that contains versioned objects without first deleting all versions of those objects.
# Example to delete a bucket named "aws-s3-demo-bucket-15-9-25"
# aws s3 rb s3://aws-s3-demo-bucket-15-9-25 --force
# --- IGNORE ---