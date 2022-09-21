#!/bin/bash

current_directory="$PWD"

cd $(dirname $0)
cd ../

./gradlew test

result=$?

cd "$current_directory"

exit $result