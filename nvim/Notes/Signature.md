# Signature

## Help

`:help signature.txt`

## Features

- seeing marks
- toggling marks
- alphabetical marks
- moving through alphabetical marks

## Workflow


Toggle next alphabetical mark
```
m.
```

m, -> is place next alphabetical mark
however, m. is toggle also,
so it's better

if you are going to only ever place one mark on a line,
then just relying on `m.` sounds good.


## Deleting Marks

m<space> -> delete all in buffer

## Moving to Marks

`] or ']    Jump by alphabetical order to next mark
`[ or '[     Jump by alphabetical order to prev mark
m/           Open location list and display marks from current buffer

`v (2nd-layer v)
'c (2nd-layer v)


m[0-9]       Toggle the corresponding marker !@#$%^&*()
m<S-[0-9]>   Remove all markers of the same type
]-           Jump to next line having a marker of the same type
[-           Jump to prev line having a marker of the same type
]=           Jump to next line having a marker of any type
[=           Jump to prev line having a marker of any type
m?           Open location list and display markers from current buffer
m<BS>        Remove all marker
