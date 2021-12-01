#!/bin/bash

# 1275528618ab270b3705a9f83fd76743
# TOKEN=1275528618ab270b3705a9f83fd76743 TEXT="Wheres Wallie Now" TITLE="WALLIE WHERE ARE YOU" sh curl-scripts/examples/create.sh


# TOKEN=40229e1b9267a320530f648892965459 PLACE="Hishams other house" MONTH="Yesterday" DAYS=4 MONEYZ=2000 REVIEW="the place smelled really nice" sh curl-scripts/destinations/create.sh
API="http://localhost:4741"
URL_PATH="/destinations"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "destination": {
      "place": "'"${PLACE}"'",
      "monthTraveled": "'"${MONTH}"'",
      "daysStayed": "'"${DAYS}"'",
      "moneySpent": "'"${MONEYZ}"'",
      "review": "'"${REVIEW}"'"
    }
  }'

echo