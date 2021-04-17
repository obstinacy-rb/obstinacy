FROM ruby:3.0.1-buster

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . /app

ENTRYPOINT ["bash"]
