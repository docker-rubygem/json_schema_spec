FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.5

RUN gem install json_schema_spec --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["json_schema_spec"]
CMD ["--help"]
