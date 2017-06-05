#!/bin/bash

# run as sh scripts/remains/show-remains.sh

TOKEN="BAhJIiVhYmMwNDkzNmM5ZTQ1OWJhOWJlOTliNmFmYWQ2NmY3ZgY6BkVG--511a30cc4f63b4201e0fcf2207a82ae1de994b70"

curl --include --request GET http://localhost:4741/remains \
  --header "Authorization: Token token=$TOKEN"
