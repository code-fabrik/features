#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# The values of the randomized options will be set as environment variables.
if [ -z "${METAMCPAPIURL}" ]; then
	echo "API url from randomized Feature not set!"
	exit 1
fi

# The values of the default options will be set as environment variables.
if [ -z "${METAMCPAPIURL__DEFAULT}" ]; then
	echo "API url from default Feature not set!"
	exit 1
fi

echo `npx -v`

if [[ "$METAMCPAPIURL__DEFAULT" != "http://host.docker.internal:12005" ]]; then
  echo "Default API URL is not set correctly!"
  exit 1
fi

reportResults