#!/usr/bin/env bash

echo "================= List Buckets Script ================"

aws s3api list-buckets --query "Buckets[].Name"

# aws s3 ls 

aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[] | .Name'