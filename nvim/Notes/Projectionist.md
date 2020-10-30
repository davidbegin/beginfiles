## Projectionist

tpope-projectionist

From a globbing perspective, "*" is actually a stand in for "**/*".  For
advanced cases, you can include both globs explicitly: "test/**/test_*.rb".
When expanding with {}, the ** and * portions are joined with a slash.  If
necessary, the dirname and basename expansions can be used to split the value
back apart.

.projections.json
Go Example:
```
{
  "pkg/*.go": {
    "alternate": "pkg/{dirname}/{basename}_test.go",
    "type": "source"
  },
  "pkg/*_test.go": {
    "alternate": "pkg/{dirname}/{basename}.go",
    "type": "test"
  }
}
```

