#!/bin/bash

# run as sh scripts/remains/update-remains.sh

ID=11
TOKEN="BAhJIiUzYWQ4ODdjYWJmMGRmY2IyNTJkYzg3NmEzNWRkODY4ZAY6BkVG--98303a7c637a291df9343dc332c7ada72540c661"
GN="Pete"
SN="Smith"
E="cremated"
L="Potters Golf Course"
C="around the 18th green"
DOB="1972-06-27"
DOD="2016-11-19"
RD="good friend of mine"

API="${API_ORIGIN:-http://localhost:4741}"
    URL_PATH="/remains/$ID"
    curl "${API}${URL_PATH}" \
      --include \
      --request PATCH \
      --header "Authorization: Token token=$TOKEN" \
      --header "Content-Type: application/json" \
      --data '{
        "remain": {
          "given_name": "'"${GN}"'",
          "sur_name": "'"${SN}"'",
          "entombment": "'"${E}"'",
          "location": "'"${L}"'",
          "comments": "'"${C}"'",
          "dob": "'"${DOB}"'",
          "dod": "'"${DOD}"'",
          "relation_desc": "'"${RD}"'"
        }
      }'
# data output from curl doesn't have a trailing newline
echo
