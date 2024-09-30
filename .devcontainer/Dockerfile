FROM ruby:3.3.5-bookworm

WORKDIR /app

# install & enable fish shell
RUN apt-get update && apt-get install -y fish
RUN chsh -s /usr/bin/fish

# install rails
RUN gem install rails

# print versions
RUN ruby --version
RUN rails --version