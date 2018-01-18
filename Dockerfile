FROM ruby:alpine
MAINTAINER Sebastian Lindberg <seb.lindberg@gmail.com>

RUN mkdir /usr/app
WORKDIR /usr/app

COPY Gemfile /usr/app/
COPY Gemfile.lock /usr/app/
RUN bundle install

COPY . /usr/app

EXPOSE 4567

CMD ["ruby", "main.rb"]