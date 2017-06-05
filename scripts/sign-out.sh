#!/bin/bash

# ID=1 TOKEN="BAhJIiU0MmMzNWU4NmRmM2FhMGNlYzFiZGQ4YTUyMDgzZWQ0ZgY6BkVG--e96eb75217c157f582570f34e6b4e9aaebf76ecf" scripts/sign-out.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
