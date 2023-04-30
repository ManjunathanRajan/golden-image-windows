#!/bin/bash

# Fetch the latest tag from the os-release branch
git fetch --tags origin os-release

# Get the latest tag
GIT_TAG=$(git describe --tags `git rev-list --tags --max-count=1`)

# Output the latest tag
echo $GIT_TAG
