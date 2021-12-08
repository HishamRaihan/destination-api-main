#!/bin/bash
# TOKEN=40229e1b9267a320530f648892965459 ID=619e50ae4c0c0f17ec432ec6 sh curl-scripts/destinations/destroy.sh

API="http://localhost:4741"
URL_PATH="/destinations"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo