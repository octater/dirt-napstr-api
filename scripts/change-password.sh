#!/bin/bash

#$ ID=1 OLDPW="newtest" NEWPW="test" TOKEN="BAhJIiU0MmMzNWU4NmRmM2FhMGNlYzFiZGQ4YTUyMDgzZWQ0ZgY6BkVG--e96eb75217c157f582570f34e6b4e9aaebf76ecf" sh scripts/change-password.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
