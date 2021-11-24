# REST_ID=61901afbb7d2ac06ff25a181 TITLE="5/5 Chipotle Cheesesteak" CONTENT="Delicious" sh curl-scripts/reviews/create.sh
# REST_ID=61901afbb7d2ac06ff25a181 TITLE="5/5 Turkey Sandwich" CONTENT="One of the best I've Had" sh curl-scripts/reviews/create.sh

curl 'http://localhost:4741/reviews' \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'",
      "destinationId": "'"${DEST_ID}"'"
    }
  }'
  echo