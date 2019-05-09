FROM ruby:2.5-slim
MAINTAINER Henri Cazottes <henri.cazottes@protonmail.com>

WORKDIR /usr/src/lewebdeb-landing
COPY Gemfile* ./
RUN gem install bundler; bundle install
COPY . .

EXPOSE 4567
CMD ["ruby", "./index.rb"]