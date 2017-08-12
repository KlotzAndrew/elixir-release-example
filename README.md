# Elixir Release Example

Two methods for building a release

### Mix

This will run the app using mix (e.g. `mix phx.server`)
```bash
`docker-compose up`
```

The image will have access to regular mix tasks like `mix ecto.migrate`

### Distillery

This will compile a release using distillery
```bash
./build_release # builds release_image

`docker-compose -f docker-compose-prod.yml up`
```

The release image will not have access to mix but tasks can be added to the
elixir release like `bin/elixir_release_example migrate`
