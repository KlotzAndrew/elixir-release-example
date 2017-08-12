FROM elixir:1.5.1

ENV APP /code

RUN mix local.hex --force && \
    mix local.rebar --force

RUN mkdir -p $APP
WORKDIR $APP

COPY mix.exs $APP
COPY mix.lock $APP
RUN mix do deps.get, deps.compile

COPY . $APP
