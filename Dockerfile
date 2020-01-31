FROM elixir:1.9.4

RUN apt-get update && apt-get install -y rsync

RUN bash <(curl -sL https://deb.nodesource.com/setup_10.x) && apt install nodejs

RUN mix local.rebar --force && mix local.hex --force

CMD ["iex"]
