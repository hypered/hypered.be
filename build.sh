#! /usr/bin/env bash

set -e

mkdir -p _site/fr/

# Run Pandoc on source files using the design-system template.
for i in \
  index \
  formations \
  contact \
  ; do \
  echo Rendering $i.md...
nix-shell -p pkgs.haskellPackages.pandoc --run "pandoc \
  --standalone \
  --template ../design-system/generated/templates/default.html \
  --lua-filter ../design-system/pandoc/tachyons.lua \
  --output _site/fr/$i.html \
  fr/metadata.yml \
  fr/$i.md"
done

rsync -aP _site/ docs/
