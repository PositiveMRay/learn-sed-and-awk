# Notes on ed

`ed <filename>` will open the file specified, move to the last line of the file, and print out the number of total characters in the file.

eg:
```sed
$ ed test
339
```

`p` (print) displays the current line.

## To move to a different line:
`1` moves to line 1.
`1d` deletes line 1.
`/regular/d` will search for the first line containing the text "regular" and delete that line.
`g/regular/d` will delete all lines (global) that contain the text "regular". (Note: g is a prefix, not a suffix, in ed.)

`[address]s/pattern/replacement/flag` Substitute "replacement" for "pattern" for all occurences of pattern (within the current line unless lines are specified in the address range), paying attention to the flags.

`/regular/s/regualr/complex/g` will replace all instances of "regular" with "complex" on the first line that contains "regular". 

`g/regular/s/regular/complex/g` does the same thing as above except for **all** lines containg the word "regular".

`g/regular expression/s/regular/complex/g` will findn all lines containing "regular expressions" and substitute all occurences of "regular" with "complexx" on each of those lines.

You can use // after the s/ if the text to replace is the same as the search term: `g/regular/s//complex/g` is the same as `g/regular/s/regular/complex/g`.

**grep** applies `g/re/p` (global regular expression print).
To remember what the name stands for, just insert slashes into the name (g/re/p).


