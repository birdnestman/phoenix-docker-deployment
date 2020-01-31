FROM elixir:1.9.4

RUN apt-get update && apt-get install -y rsync

RUN bash <(curl -sL https://deb.nodesource.com/setup_10.x) 

RUN apt install nodejs

RUN mix local.rebar --force

RUN mix local.hex --force

CMD ["iex"]
