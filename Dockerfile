FROM elixir:1.10.0-alpine

RUN apk add --update git build-base nodejs yarn python npm rsync

RUN mix local.hex --force && \
    mix local.rebar --force

CMD ["iex"]
