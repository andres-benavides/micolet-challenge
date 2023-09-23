FROM ruby:3.1.1-alpine
RUN apk add --no-cache build-base  bash libcurl nodejs npm tzdata
RUN gem install bundler -v 2.3.19
RUN npm install -g yarn

RUN mkdir /app
RUN mkdir /app/log/
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

RUN bundle
RUN bundle install

COPY . /app

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD bundle exec rails webpacker:install && bundle exec rails s -b 0.0.0.0 -p 3000
