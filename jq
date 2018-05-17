#!/bin/bash

# Download binaries for jq and chmod
wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod +x jq-linux64
mv jq-linux64 bin/jq

# Run: jq --version
jq --version
