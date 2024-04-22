#! /usr/bin/env nix-shell
#! nix-shell -i bash ../../design/itcss/shell.nix

gulp --gulpfile ../../design/itcss/gulpfile.js --cwd .
