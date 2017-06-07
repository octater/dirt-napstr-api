#!/bin/bash

# run as sh scripts/remains/create-remains.sh

TOKEN="BAhJIiVkNzQ2MDliMWNjNGQ2N2JiM2RhZDMzMzZhYWE1MmE4MQY6BkVG--8be12def100bb5c124bdbf45c4d522bace01d540"
GN="Dino"
SN="Flintstone"
E="cremated"
L="Bedrock"
C="next to old dog house"
DOB="1942-04-17"
DOD="2010-10-29"
RD="good friend"

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
      "dob": "'"${DOB}"'",
      "dod": "'"${DOD}"'",
      "relation_desc": "'"${RD}"'"
    }
  }'
