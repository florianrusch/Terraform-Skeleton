#!/usr/bin/env sh

set -e

[ -z "$1" ] && folder="./terraform-skeleton" || folder=$1

# Clone
git clone git@github.com:florianrusch/Terraform-Skeleton.git $folder
cd $folder

# Remove origin
git remote remove origin

# Remove hack folder
rm -rf ./hack
git add ./hack
git commit -m "Remove unneeded hack folder"
