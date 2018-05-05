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

# Make sure we're on the master branch.
(git branch | grep -q 'master') || {
    echo "Only release from the master branch."
    exit 1
}

# Figure out what version we're releasing.
RELEASE_TAG=v`ls ${HACKER_MATRIX}-*.gem | sed 's/^${HACKER_MATRIX}-\(.*\)\.gem$/\1/'`

# Make sure we haven't released this version before.
git fetch -t origin
(git tag -l | grep -q "${RELEASE_TAG}") && {
    echo "Whoops, there's already a '${RELEASE_TAG}' tag."
    exit 1
}

# Tag it and bag it.
gem push ${HACKER_MATRIX}-*.gem
git tag "${RELEASE_TAG}"
git push origin master
git push origin "${RELEASE_TAG}"
