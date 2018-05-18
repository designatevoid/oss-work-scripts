#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'
echo $BASH_VERSION | egrep 4.\\d || echo fail