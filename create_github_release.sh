#!/bin/bash

set -e

NEW_TAG="$1"
GITHUB_PAT="$2"
RELEASE_TITLE="Golden Image Windows 2019 - $NEW_TAG"
RELEASE_DESCRIPTION="This is the release for Golden Image Windows Server 2019 - $NEW_TAG.\n\nAdditional information:\n- Region: $REGION\n- AMI ID: $AMI_ID"

curl -X POST -H "Authorization: token $GITHUB_PAT" -H "Content-Type: application/json" -d "{\"tag_name\":\"$NEW_TAG\",\"target_commitish\":\"main\",\"name\":\"$RELEASE_TITLE\",\"body\":\"$RELEASE_DESCRIPTION\"}" https://api.github.com/repos/ManjunathanRajan/golden-image-windows/releases
