#!/bin/bash -x

# Disable path conversion in MSYS
export MSYS_NO_PATHCONV=1

# Main
docker run --rm -v "$(pwd):/terraform" quay.io/terraform-docs/terraform-docs:0.20.0 markdown /terraform > README.md
# Modules
ls modules | awk '{print "docker run --rm --volume \"$(pwd)/modules/"$0":/terraform-docs\" -u $(id -u) quay.io/terraform-docs/terraform-docs:0.20.0 markdown /terraform-docs > modules/"$0"/README.md"}'| bash -x
