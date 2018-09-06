#!/usr/bin/env bash

chmod +x om-cli/om-linux
export PATH="$PATH:$(pwd)/om-cli"

echo $OPSMAN_DOMAIN_OR_IP_ADDRESS

om-linux \
  --target "https://${OPSMAN_DOMAIN_OR_IP_ADDRESS}" \
  --username "$OPSMAN_USERNAME" \
  --password "$OPSMAN_PASSWORD" \
  --skip-ssl-validation \
  configure-product \
  --product-name cf \
  --config sample-pipelines/tasks/configure-pas/config.yml \
  --vars-file secrets/product.yml
