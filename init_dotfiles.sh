#!/bin/usr/bash

git init # initialize repository if needed

git submodule add https://github.com/anishathalye/dotbgit submodule add https://github.com/ohmyzsh/ohmyzsh ohmyzsh
git config -f .gitmodules submodule.dotbot.ignore dirty
# git config -f .gitmodules submodule.ohmyzsh.ignore dirty
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
