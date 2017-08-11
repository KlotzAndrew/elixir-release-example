FROM elixir:1.5.1

ENV APP /code
ENV REPLACE_OS_VARS true

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mkdir -p $APP
WORKDIR $APP

COPY mix.exs $APP
COPY mix.lock $APP
RUN mix deps.get

COPY . $APP

RUN mix compile
