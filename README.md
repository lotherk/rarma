# Rarma - Ruby Arma Library

This is rarma!

## Compiler

Examples:

```
rarma compile file.rb
# -> file.rb.sqf
```

```
rarma compile file.rb -o destdir
# -> destdir/file.rb.sqf
```

```
rarma compile srcdir
# srcdir/file.rb -> srcdir/file.rb.sqf
# srcdir/other_file.rb -> srcdir/other_file.rb.sqf
```

```
rarma compile srcdir -o destdir
# srcdir/file.rb -> destdir/file.rb.sqf
# srcdir/other_file.rb -> destdir/other_file.rb.sqf
```

```
rarma compile -i myinclude srcdir -o destdir
# same as above plus copies myinclude into destdir
# and every subfolder created during compile (not existing
# subfolders in destdir that do not exist in srcdir)
```
