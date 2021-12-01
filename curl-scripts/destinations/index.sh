#!/bin/sh
# TOKEN=201ac2071afd57a5e532b1200832b81a sh curl-scripts/destinations/index.sh

API="http://localhost:4741"
URL_PATH="/destinations"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo