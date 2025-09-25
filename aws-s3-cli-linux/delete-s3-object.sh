#!/usr/bin/env bash

echo "===========Delete Object from S3 Bucket============"

#exit immediately if a command exits with a non-zero status
set -e
 

#!/bin/bash

if [ -z "$1" ]; then
  echo "Bucket name not provided"
  exit 1
fi

BUCKET_NAME="$1"

aws s3api list-objects-v2 \
    --bucket "$BUCKET_NAME" \
    --query 'Contents[].Key' \
    --output json | \
    jq '{Objects: [.[] | {Key: .}]}' > /tmp/delete_objects.json

if [ ! -s /tmp/delete_objects.json ]; then
  echo "No objects found in the bucket."
  exit 0
fi

aws s3api delete-objects \
    --bucket "$BUCKET_NAME" \
    --delete file:///tmp/delete_objects.json
echo "===========Delete Object from S3 Bucket Completed============"