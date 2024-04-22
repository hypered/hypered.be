This is a setup to prototype pages with Pug similar to `design/struct`. Like
design/struct, it reuses the Gulpfile from `design/struct`. The `scss/` and
`static/` directories are symlinks to the ones in design/struct.

Finally, this subdirectory is called `struct` too because the Gulpfile expects
that to not use the `design/itcss` files.

This allows to work on the example templates exactly like in `design/struct`,
but without polluting it with specific content for `hypered.be`.

```
$ ./serve.sh
```
