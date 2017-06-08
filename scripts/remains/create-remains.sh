#!/bin/bash

# run as sh scripts/remains/create-remains.sh

TOKEN="BAhJIiUwYjZiMjJhYjAyNGI3MDk4ZjJmNmQzMjFmNGMzNWU2NQY6BkVG--50b8ee9329a3152b86a84e284e44921db6ab755a"
GN="George"
SN="Burns"
E="other"
L="Not sure"
C="no idea"
DOD="2010-10-29"
RD="liked cigars"

curl --include --request POST http://localhost:4741/remains \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "remain": {
      "given_name": "'"${GN}"'",
      "sur_name": "'"${SN}"'",
      "entombment": "'"${E}"'",
      "location": "'"${L}"'",
      "comments": "'"${C}"'",
      "dod": "'"${DOD}"'",
      "relation_desc": "'"${RD}"'"
    }
  }'
