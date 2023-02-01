#! /usr/bin/env bash

# This require that direnv is working (to load the .envrc in ../../nix-notes).

pushd ../nix-notes
./deploy.sh ../hypered-infrastructure/host-2.hypered.co/configuration.nix
popd

