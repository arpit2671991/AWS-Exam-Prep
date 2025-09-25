#!/usr/bin/env bash

echo "===========Put Object to S3 Bucket============"

#exit immediately if a command exits with a non-zero status
set -e
 
#check for bucket name
if [ -z "$1" ]; then
  echo "Bucket name not provided"
  exit 1
fi
BUCKET_NAME=$1
#check for file name
if [ -z "$2" ]; then
    echo "File name not provided"
    exit 1
fi
FILE_NAME=$2

OBJECT_KEY=$(basename "$FILE_NAME")

#upload file to s3 bucket
aws s3api put-object \
    --bucket "$BUCKET_NAME" \
    --key "$OBJECT_KEY" \
    --body "$FILE_NAME"

echo "===========Put Object to S3 Bucket Completed============"
