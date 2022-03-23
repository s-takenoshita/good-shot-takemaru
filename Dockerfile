FROM ruby:2.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /good-shot
COPY Gemfile Gemfile.lock /good-shot/
RUN bundle install