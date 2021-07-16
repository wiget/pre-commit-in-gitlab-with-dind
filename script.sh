#!/bin/sh
set -x
rm -rf repo
git clone https://github.com/wiget/pre-commit-in-gitlab-with-dind.git repo
cd repo
pre-commit
