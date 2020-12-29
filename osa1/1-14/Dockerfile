FROM ruby:2.6.0

ARG BUILD_ENV
ARG SECRET_KEY

ENV SECRET_KEY_BASE=$SECRET_KEY

EXPOSE 3000

RUN apt update
RUN apt install -y git
RUN git clone https://github.com/docker-hy/rails-example-project.git
WORKDIR /rails-example-project

RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

RUN gem install bundler
RUN bundler install  

RUN if [ "$BUILD_ENV" = "production" ] ; then rails db:migrate RAILS_ENV=production && rake assets:precompile ; else rails db:migrate ; fi

CMD if [ "$BUILD_ENV" = "production" ] ; then rails s -e production ; else rails s ; fi
