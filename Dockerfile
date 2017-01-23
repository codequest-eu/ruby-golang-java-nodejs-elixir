FROM codequest/ruby-golang-java-nodejs:latest

WORKDIR /tmp
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
  && dpkg -i erlang-solutions_1.0_all.deb \
  && apt-get update \
  && apt-get install esl-erlang=1:19.2 elixir=1.4.0-1 -y \
  && mix local.hex --force \
  && mix local.rebar --force \
  && rm -f erlang-solutions_1.0_all.deb
