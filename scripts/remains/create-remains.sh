#!/bin/bash

# run as sh scripts/remains/create-remains.sh

TOKEN="BAhJIiUzYWQ4ODdjYWJmMGRmY2IyNTJkYzg3NmEzNWRkODY4ZAY6BkVG--98303a7c637a291df9343dc332c7ada72540c661"
GN="Barney"
SN="Rubble"
E="cemetary"
L="Greenwood"
C="next to big bush in section 14"
DOB="1942-04-17"
DOD="2010-10-29"
RD="my dogs buddy"

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
