# renovate: datasource=docker depName=renovate/renovate
ARG RENOVATE_VERSION=36.40.4
FROM renovate/renovate:${RENOVATE_VERSION}

# Hijack image
WORKDIR /tmp
USER root

RUN curl -L -o terraform-docs.tgz 'https://github.com/terraform-docs/terraform-docs/releases/download/v0.16.0/terraform-docs-v0.16.0-linux-arm64.tar.gz' \
  && tar -xzvf terraform-docs.tgz \
  && mv terraform-docs /usr/local/bin

# Revert back to default image
WORKDIR /usr/src/app
USER 1000
