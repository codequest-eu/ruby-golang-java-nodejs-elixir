FROM codequest/ruby-golang-java-nodejs:latest

WORKDIR /tmp
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update && apt-get install esl-erlang elixir -y
RUN mix local.hex --force
RUN mix local.rebar --force

