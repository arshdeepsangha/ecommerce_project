FROM ruby:2.5.1
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /cars
WORKDIR /cars
COPY Gemfile /cars/Gemfile
COPY Gemfile.lock /cars/Gemfile.lock
RUN bundle install
COPY . /cars
CMD bundle exec puma -C /cars/config/puma.rb