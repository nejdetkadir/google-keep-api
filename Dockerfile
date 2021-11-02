FROM ruby:3.0.0-alpine

RUN apk add --update --virtual \
  runtime-deps \
  postgresql-dev \
  postgresql-client \
  build-base \
  libxml2-dev \
  libxslt-dev \
  nodejs \
  yarn \
  libffi-dev \
  readline \
  libc-dev \
  linux-headers \
  readline-dev \
  file \
  imagemagick \
  git \
  tzdata && rm -rf /var/cache/apk/*

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems

RUN yarn install
RUN bundle install

ENTRYPOINT [ "bin/rails" ]
EXPOSE 3000

CMD [ "s", "-b", "0.0.0.0" ]