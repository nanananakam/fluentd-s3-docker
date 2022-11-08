FROM fluent/fluentd:v1.14.0-debian-1.0

# AWS
ARG AWS_KEY_ID
ARG AWS_SEC_KEY
ARG S3_BUCKET
ARG S3_ENDPOINT
ARG S3_FORCE_PATH_STYLE
ENV AWS_KEY_ID=${AWS_KEY_ID}
ENV AWS_SEC_KEY=${AWS_SEC_KEY}
ENV S3_BUCKET=${S3_BUCKET}
ENV S3_ENDPOINT=${S3_ENDPOINT}
ENV S3_FORCE_PATH_STYLE=${S3_FORCE_PATH_STYLE}
# for fluentd v1.0 or later
RUN gem install fluent-plugin-s3 --no-document

# Config
USER fluent
COPY fluent.conf /fluentd/etc/