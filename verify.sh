#!/bin/bash
export FAIL=0
for filename in "css"/*.css; do
    # Run csstree-verifier on the current file
    csstree-validator "$filename"

    # Check the exit status of csstree-verifier
    if [[ $? -ne 0 ]]; then
        export FAIL=1
        echo "FAIL: $filename"
    else
        echo "PASS: $filename"
    fi
done  
if [[ $FAIL -ne 0 ]]; then
  exit 1
fi
