#!/usr/bin/env bash

#lets create output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

#generate random number

NUM_FILES=$((RANDOM % 10 + 1))

for((i=1; i<=NUM_FILES; i++)); do
#generate a random file name
FILE_NAME="OUTPUT_DIR/File_$i.txt"

#generate random data and write to file

dd if=/dev/urandom of=$FILE_NAME bs=1024 count=$((RANDOM % 1024 + 1)) 2> /dev/null

done