# base on latest ruby base image
FROM ruby:2.2.1

ENV DECLARED_ENV_FROM_DOCKERFILE=VAL_FROM_DOCKERFILE

ARG PASSING_THROUGH_BUILD_ARG

RUN /bin/bash -c "echo $DECLARED_ENV_FROM_YML > commit_id.txt"

ADD print_env_vars.rb .
ADD new_var.sh .

RUN /bin/bash -c "source new_var.sh"