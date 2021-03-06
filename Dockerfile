FROM pipelinecomponents/base-entrypoint:0.2.0 as entrypoint

FROM python:3.8.3-alpine3.10
COPY --from=entrypoint /entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
ENV DEFAULTCMD safety


WORKDIR /app/

# Generic
COPY app /app/

# Python
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /code/
WORKDIR /code/
# Build arguments
ARG BUILD_DATE
ARG BUILD_REF

# Labels
LABEL \
    maintainer="Robbert Müller <spam.me@grols.ch>" \
    org.label-schema.description="Safety by pyup.io for Python in a container for gitlab-ci" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Safety by pyup.io for Python" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://pipeline-components.gitlab.io/" \
    org.label-schema.usage="https://gitlab.com/pipeline-components/python-safety/blob/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://gitlab.com/pipeline-components/python-safety/" \
    org.label-schema.vendor="Pipeline Components"
