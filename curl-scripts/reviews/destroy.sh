# REST_ID=61901afbb7d2ac06ff25a181 REVIEW_ID=61903a7e56f4cd147cabcef9 sh curl-scripts/reviews/destroy.sh

curl "http://localhost:4741/reviews/${REVIEW_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "destinationId": "'"${DEST_ID}"'"
    }
  }'
echo
# This is another way we could send both ids
# curl "http://localhost:4741/restaurants/${REST_ID}/reviews/${REVIEW_ID}" \
#   --include \
#   --request DELETE \
#   --header "Content-Type: application/json"

echo