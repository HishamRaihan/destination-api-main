#!/bin/bash
# TOKEN=be5df707f22b34931d996aa1c152870e ID=619dc04aca491832f7a792e1 sh curl-scripts/destinations/destroy.sh

API="http://localhost:4741"
URL_PATH="/destinations"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo