#!/bin/sh

set -e

eval $(opam env)
satyrographos install

exec "$@"
