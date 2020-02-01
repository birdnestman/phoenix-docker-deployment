FROM elixir:1.9.4

RUN apt-get update && apt-get install -y rsync curl \
	&& git clone https://github.com/nodejs/node.git \
 	&& cd node \
 	&& ./configure \
 	&& make \
 	&& make install \
	&& mix local.rebar --force \
	&& mix local.hex --force


CMD ["iex"]
