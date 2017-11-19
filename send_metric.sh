#!/bin/sh

# Define some variables:
# CACHET_BASE_URL="https://status.something.ext/"
# CACHET_APIKEY="APIKEY-token"
# METRIC_ID=1
# METRIC_VALUE=1

# PING
curl -H "Content-Type: application/json;" -H "X-Cachet-Token: $CACHET_APIKEY" \
  --request GET --url $CACHET_BASE_URL/api/v1/ping

# PUSH the metric
curl -H "Content-Type: application/json;" -H "X-Cachet-Token: $CACHET_APIKEY" \
  --request POST --data "{\"value\": $METRIC_VALUE}" \
  --url $CACHET_BASE_URL/api/v1/metrics/$METRIC_ID/points
