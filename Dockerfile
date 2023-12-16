FROM ruby:3.0.2-alpine AS base

RUN apk update && \
	apk upgrade && \
	apk add --update --no-cache \
	tzdata \
	build-base \
	libxml2-dev \
	libxslt-dev \
	openssh-client \
	postgresql-dev \
	postgresql-client \
	postgresql-libs \
	libpq \
	git \
	less \
	nodejs \
	yarn


FROM base AS dependencies

RUN apk add --update build-base
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=3 --retry=3

FROM base

RUN adduser -D app
USER app

WORKDIR /home/app

COPY --from=dependencies /usr/local/bundle /usr/local/bundle

COPY --chown=app . ./


EXPOSE 3000

# Start the Rails server when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]
