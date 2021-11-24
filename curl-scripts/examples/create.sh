#!/bin/bash

API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'",
      "title": "'"${TITLE}"'"
    }
  }'

echo
# 1275528618ab270b3705a9f83fd76743
# TOKEN=1275528618ab270b3705a9f83fd76743 TEXT="Wheres Wallie Now" TITLE="WALLIE WHERE ARE YOU" sh curl-scripts/examples/create.sh