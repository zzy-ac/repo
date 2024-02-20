#!/bin/bash
set -e

init_path=$PWD
mkdir upload_packages
echo ok--------
cp -f $local_path/*/*/*.tar.zst ./upload_packages/

cd upload_packages || exit 1

repo-add "./${repo_name:?}.db.tar.gz" ./*.tar.zst -R
python3 $init_path/create-db-and-upload-action/sync.py
rm "./${repo_name:?}.db.tar.gz"
rm "./${repo_name:?}.files.tar.gz"

packages=( "*.tar.zst" )

repo-add "./${repo_name:?}.db.tar.gz" ./*.tar.zst -R
