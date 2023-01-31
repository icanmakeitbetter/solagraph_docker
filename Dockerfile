FROM ruby:2.7.7-alpine3.16

ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle

ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENV APP_ROOT=/usr/src/app

WORKDIR /usr/src/app

RUN gem install solargraph

RUN solargraph bundle
