#!/bin/bash

# Exit script on any error
set -e

# Default values
TARGET="dev"

# Help message
function show_help {
  echo "Usage: ./serve.sh [options]"
  echo "Options:"
  echo "  -t, --target [dev|prod]   Specify the target to run (default: dev)"
  echo "  -h, --help              Show this help message"
}

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    -t|--target) TARGET="$2"; shift ;;
    -h|--help) show_help; exit 0 ;;
    *) echo "Unknown option: $1"; show_help; exit 1 ;;
  esac
  shift
done

# Validate target
if [[ "$TARGET" != "dev" && "$TARGET" != "prod" ]]; then
  echo "Invalid target: $TARGET. Use 'dev' or 'prod'."
  exit 1
fi

# Run the selected target
if [[ "$TARGET" == "dev" ]]; then
  echo "Starting development server on port 4000..."
  docker run -p 4000:4000 -v "$(pwd):/site" portfolio-dev
elif [[ "$TARGET" == "prod" ]]; then
  echo "Starting production server on port 80..."
  docker run -p 8080:8080 portfolio-prod
fi
