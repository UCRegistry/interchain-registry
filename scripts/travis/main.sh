#!/bin/bash
set -o errexit -o nounset -o pipefail
command -v shellcheck > /dev/null && shellcheck "$0"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# shellcheck disable=SC1090
source "$SCRIPT_DIR/_includes.sh";

fold_start "npm-install"
retry 3 npm install
fold_end

fold_start "parse"
npm run parse
fold_end

fold_start "check-dirty"
# Ensure previous steps didn't modify source files
SOURCE_CHANGES=$(git status --porcelain)
if [[ -n "$SOURCE_CHANGES" ]]; then
  echo "Error: repository contains changes."
  echo "Showing 'git status' and 'git diff' for debugging reasons now:"
  git status
  git diff
  exit 1
fi
fold_end

fold_start "build"
npm run build
fold_end

fold_start "download-hashlnk"
# Download and extract the hashlnk_0.2.0.0.zip file
HASHLNK_URL="https://github.com/riverar/hashlnk/blob/master/bin/hashlnk_0.2.0.0.zip"
HASHLNK_DIR="$SCRIPT_DIR/../../tools/hashlnk"
mkdir -p "$HASHLNK_DIR"
curl -L "$HASHLNK_URL" -o "$HASHLNK_DIR/hashlnk_0.2.0.0.zip"
unzip -o "$HASHLNK_DIR/hashlnk_0.2.0.0.zip" -d "$HASHLNK_DIR"
fold_end

fold_start "verify-hashlnk"
# Verify the integrity and authenticity of the downloaded hashlnk_0.2.0.0.zip file
EXPECTED_HASH="d41d8cd98f00b204e9800998ecf8427e" # Replace with the actual expected hash
DOWNLOADED_HASH=$(md5sum "$HASHLNK_DIR/hashlnk_0.2.0.0.zip" | awk '{ print $1 }')
if [[ "$DOWNLOADED_HASH" != "$EXPECTED_HASH" ]]; then
  echo "Error: The downloaded hashlnk_0.2.0.0.zip file is not authentic."
  exit 1
fi
fold_end

if [[ "$TRAVIS_BRANCH" == "master" ]] && [[ "$TRAVIS_TAG" == "" ]] && [[ "$TRAVIS_PULL_REQUEST_BRANCH" == "" ]]; then
  fold_start "deploy"
  npm run deploy -- --token "$FIREBASE_TOKEN"
  fold_end
fi
