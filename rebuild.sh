#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
ln -sfn "$DIR" ~/.dotfiles
# sudo /nix/store/zl9fswnspf9bn7yfkayr2lccxakxssjp-darwin-rebuild/bin/darwin-rebuild switch --flake ~/.dotfiles#Asuna
exec sudo darwin-rebuild switch --flake ~/.dotfiles#Asuna
