#!/bin/sh
# Tag and push a release.

set -e

# Make sure we're in the project root.
cd $(dirname "$0")/..

# Make sure the darn thing works
bundle update

# Jekyll theme name
HACKER_MATRIX="HackerMatrix"

# Build a new gem archive.
rm -rf ${HACKER_MATRIX}-*.gem
gem build -q ${HACKER_MATRIX}.gemspec
