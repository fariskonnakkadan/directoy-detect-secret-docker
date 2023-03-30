#!/bin/bash

set -e

if [[ -z "${DIR}" ]]; then
    echo "DIR environment variable must be set"
    exit 1
fi

# Copy directory to /tmp
cp -r "${DIR}" /tmp/dir

# Initialize git repo in /tmp directory
cd /tmp/dir
git init

# Run detect-secrets
detect-secrets scan --exclude-files .git/**/*

# Print results
detect-secrets scan --exclude-files .git/**/* --output-hook=cli
