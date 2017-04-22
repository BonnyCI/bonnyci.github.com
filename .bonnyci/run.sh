#!/bin/bash -xe
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs ruby ruby-dev
./tests/filename-test.sh
./tests/jekyll-build.sh
./tests/markdownlint-cli-test.sh
./tests/shellcheck-test.sh
./tests/signed-off-by-test.sh
