#./Dockerfile
FROM ruby:2.3
RUN apt-get update
RUN apt-get install -y build-essential nodejs

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

COPY . ./
