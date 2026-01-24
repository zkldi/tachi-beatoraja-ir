#!/bin/bash
set -e -o pipefail

if [ -z "$TCHIR_NAME" ] || [ -z "$TCHIR_HOME" ] || [ -z "$TCHIR_BASE_URL" ]; then
	echo "You're calling build.sh without any of the required environment variables."
	echo "Did you mean to run bokutachi.sh?"
	exit 1;
fi

echo "BUILDING: $TCHIR_NAME $TCHIR_HOME $TCHIR_VERSION $TCHIR_BASE_URL"
./gradlew build
echo "FINISHED BUILDING: $TCHIR_NAME $TCHIR_HOME $TCHIR_VERSION $TCHIR_BASE_URL"
