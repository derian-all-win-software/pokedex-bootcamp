#!/bin/bash

default_has_push="false"

files=$1
commit_message=$2
has_push=${3:-$default_has_push}

echo "Adding files"
git add "$files"

echo "Making commit"
git commit -m "$message" # TODO: Fix commit message

echo "Has push: $has_push"

if [[ "$has_push" == "true" ]]; then
    current_branch=$(git branch --show-current)
    echo "Pushing from $current_branch"
    git push origin $current_branch
fi