FROM ruby:2.7.2
WORKDIR /var/www
RUN apt-get update && apt-get install -y mariadb-server mariadb-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN gem install rails
CMD /usr/bin/mysqld_safe
