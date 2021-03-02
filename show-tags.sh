#!/bin/sh


REF=${1:-HEAD}

echo All tags pointing at the current HEAD:
git tag --points-at $REF

echo

echo Description of the current HEAD in terms of the nearest tag + possibly a suffix:
git describe --always $REF

echo

echo All tags that contain the current HEAD commit:
git tag --contains $REF

echo

echo All refs that point to the current HEAD:
git for-each-ref --points-at $REF


