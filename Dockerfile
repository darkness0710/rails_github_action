FROM ruby:2.7.2
RUN apt-get update && apt-get install -y mariadb-server mariadb-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN gem install rails
RUN gem install rspec
ENTRYPOINT service mysql restart && bash
