#! /usr/bin/env bash

set -ex

docker build -t release_image \
  --no-cache \
  -f Dockerfile.release .

# You can run it in one of the following ways:
#   Interactive: _build/prod/rel/elixir_release_example/bin/elixir_release_example console
#   Foreground: _build/prod/rel/elixir_release_example/bin/elixir_release_example foreground
#   Daemon: _build/prod/rel/elixir_release_example/bin/elixir_release_example start
