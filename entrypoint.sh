#!/usr/bin/env bash

set -eu

if [ $# -eq 0 ]
then
  echo "Please provide the project token!"
  exit 1
else
	curl -s https://codacy-coverage.lsferreira.net/coverage.sh | bash -s -- -t "$INPUT_TOKEN" -f "$INPUT_FILES" -L "$INPUT_LANGUAGE"
fi