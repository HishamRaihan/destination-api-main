#!/bin/sh
# TOKEN=40229e1b9267a320530f648892965459 sh curl-scripts/destinations/index.sh

API="http://localhost:4741"
URL_PATH="/destinations"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo