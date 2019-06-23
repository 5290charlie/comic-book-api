FROM ruby:2.5.1

LABEL maintainer "Charlie McClung <charlie@cmr1.com>"

ENV BUNDLER_VERSION 2.0.2

# Use generic /app path for working directory
ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

ADD https://deb.nodesource.com/setup_8.x /tmp/node.sh

# Run system package installations
RUN set -ex && \
      apt-get update && apt-get install -qq -y --no-install-recommends \
      # Basic required packages for all rails images
      build-essential git vim gnupg2 && \
      # Install node (only installs 8.x apt repo & key)
      cat /tmp/node.sh | bash && \
      # Run install again for nodejs (after running node.sh, this will install 8.x)
      apt-get install -qq -y -f --no-install-recommends nodejs && \
      # Update bundler gem
      gem install bundler

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install --jobs=16 --retry=3

COPY . .

CMD bundle exec puma -C config/puma.rb
