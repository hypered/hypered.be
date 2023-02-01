#! /usr/bin/env bash

set -e

nix-build -A html.all

mkdir -p ../entrypoint/as-is/hypered.be/
rsync -aP result/ ../entrypoint/as-is/hypered.be/
cp ../design/static/css/styles.css ../entrypoint/static/css/
