#! /usr/bin/env bash

set -ex

# MIX_ENV=prod mix release --env=prod
# RELEASE_DIR=_build/prod
# BUILDER_IMAGE=builder_image
# BUILDER_CONTAINER=builder_container

docker build -t builder_image \
  --no-cache \
  -f Dockerfile.build .

# docker tag ere_builder_image klotzandrew/ere_builder_image
# docker push klotzandrew/ere_builder_image

# docker run \
#   -e MIX_ENV=prod \
#   --name builder_container \
#   builder_image \
#   mix release --env=prod
#
# rm -rf _build/prod
# docker cp builder_container:code/_build/prod .
# docker cp builder_container:code/_build/prod/rel/elixir_release_example/releases/RELEASES .

# docker rm builder_container

# You can run it in one of the following ways:
#   Interactive: _build/prod/rel/elixir_release_example/bin/elixir_release_example console
#   Foreground: _build/prod/rel/elixir_release_example/bin/elixir_release_example foreground
#   Daemon: _build/prod/rel/elixir_release_example/bin/elixir_release_example start
