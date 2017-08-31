# base on latest ruby base image
FROM ruby:2.2.1

ENV DECLARED_ENV_FROM_DOCKERFILE=VAL_FROM_DOCKERFILE

ARG PASSING_THROUGH_BUILD_ARG
ENV PASSING_THROUGH_BUILD_ARG_ENV=PASSING_THROUGH_BUILD_ARG

ADD print_env_vars.rb .
ADD new_var.sh .

RUN /bin/bash -c "source new_var.sh"