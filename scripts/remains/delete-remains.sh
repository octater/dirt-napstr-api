#!/bin/bash
# run as sh scripts/remains/delete-remains.sh

TOKEN="BAhJIiUzYWQ4ODdjYWJmMGRmY2IyNTJkYzg3NmEzNWRkODY4ZAY6BkVG--98303a7c637a291df9343dc332c7ada72540c661"

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/games"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN"
#
# echo



curl --include --request DELETE http://localhost:4741/remains/10 \
  --header "Authorization: Token token=$TOKEN"
