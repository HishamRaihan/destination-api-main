# REST_ID=61901afbb7d2ac06ff25a181 REVIEW_ID=61903a7556f4cd147cabcef8 TITLE="6/5 Veggie Turkey Sandwich" CONTENT="IDK" sh curl-scripts/reviews/update.sh

API= "http://localhost:4741/" 
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "review": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'",
      "destinationId": "'"${DEST_ID}"'"
    }
  }'
  echo