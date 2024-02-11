#!/bin/bash
FAIL = 0
for filename in "css"/*.css; do
    # Run csstree-verifier on the current file
    csstree-validator "$filename"

    # Check the exit status of csstree-verifier
    if [[ $? -ne 0 ]]; then
        echo "Error: csstree-validator failed for $filename"
        FAIL = 1
    fi
done
if [[ FAIL -ne 0 ]]; then
  exit 1
done
