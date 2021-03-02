# Some variants of Git tag and branch parsing

This repo contains a few branches, sub-branches and tags to demonstrate
various ways of parsing Git refs.

As of writing, this is the output of `git log --graph --oneline --all`:

```
* b68f4a8 (HEAD -> master) Add the better-version-than.sh and show-tags.sh scripts
* 4c13361 Head commit on master
| * 0f3603a (tag: v2.0.0, version-2) Version 2.0
|/
| * 42bb734 (tags) Commit after the last tag
| * da5dfab (tag: extra-tag, tag: 1.0.1) Version 1.0.1
| * d44495f (tag: 1.0.0) Some version 1.0.0
|/
| * 67549a1 (branch-a) Head on branch-a
| | * a200766 (branch-a-sub) Commit on branch-a-sub
| |/
| * b048118 Commit on branch A
|/
* 75b8a94 First commit
```

Run `./better-version-than.sh X.Y.Z` to test if a tag named `A.B.C` or
`vA.B.C` exists that is higher semver-wise than `X.Y.Z`.

Run `./show-tags.sh {SHA-or-ref}` to obtain various available Git
descriptions for the commit, like the tags referring to it, containing it,
relative descriptions or branch heads pointing to it.

