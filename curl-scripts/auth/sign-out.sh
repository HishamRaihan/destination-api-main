#!/bin/bash
# TOKEN=3e2dfeffc3dc3b01704740fb83c48c80 sh curl-scripts/auth/sign-out.sh

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo