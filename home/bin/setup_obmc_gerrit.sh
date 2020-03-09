#! /bin/bash

set -e

repo=`basename $(git remote get-url origin)`
git remote add gerrit ssh://openbmc.gerrit/openbmc/${repo}
gitdir=$(git rev-parse --git-dir)
scp -p -P 29418 openbmc.gerrit:hooks/commit-msg ${gitdir}/hooks
