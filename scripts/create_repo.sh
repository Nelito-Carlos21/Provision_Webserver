#!/usr/bin/env bash
set -euo pipefail
USER=${1:?usuario}
REPO=${2:?reponame}
TOKEN=${GITHUB_TOKEN:-}
if [ -z "$TOKEN" ]; then
  echo "Defina a variável GITHUB_TOKEN" >&2
  exit 1
fi
curl -s -H "Authorization: token $TOKEN"   -d "{\"name\": \"$REPO\", \"private\": false}"   https://api.github.com/user/repos
