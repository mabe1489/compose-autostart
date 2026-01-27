#!/bin/bash

# Environment variables with flags
PATH="Path-to-compose-file"
PROJECT_NAME="Compose-Project-Name"



while getopts ":p:c:t:z:n:" opt; do
  case $opt in
    p) PATH="$OPTARG";;
    c) PROJECT_NAME="$OPTARG";;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

cd "$PATH"
docker compose -p "$PROJECT_NAME" up -d