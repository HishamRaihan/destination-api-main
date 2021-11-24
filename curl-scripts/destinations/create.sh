#!/bin/bash

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
      "moneySpent": "'"${MONEYZ}"'"
    }
  }'

echo
# 1275528618ab270b3705a9f83fd76743
# TOKEN=1275528618ab270b3705a9f83fd76743 TEXT="Wheres Wallie Now" TITLE="WALLIE WHERE ARE YOU" sh curl-scripts/examples/create.sh


# TOKEN=be5df707f22b34931d996aa1c152870e PLACE="Wallies House" MONTH="Yesterday" DAYS=4 MONEYZ=2000 sh curl-scripts/destinations/create.sh