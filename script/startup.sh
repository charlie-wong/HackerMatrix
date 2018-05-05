#!/bin/sh

set -e

# install bundler
sudo gem install bundler

# install deps to local directory
bundle install --path "${PWD}/.bundle"
