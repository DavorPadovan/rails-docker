FROM ruby:2.4.0
RUN mkdir /api
WORKDIR /api
ADD Gemfile /api/Gemfile
ADD Gemfile.lock /api/Gemfile.lock
RUN gem install bundler -v "=1.12.0"
RUN bundle install
ADD . /api
