#! /bin/bash

# Exit script on any error
set -e

# Default values for args
TARGET="dev"
TAG="portfolio"
BUILD_ARG=""

# Help message
function show_help {
  echo "Usage: ./build.sh [options]"
  echo "Options:"
  echo "  -t, --target [dev|prod]      Specify the build target (default: dev)"
  echo "  -h, --help                   Show this help message"
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

# Build the Docker image
IMAGE_TAG="${TAG}-${TARGET}"

echo "Building Docker image for target: $TARGET"

docker build -f "Dockerfile.${TARGET}" -t "$IMAGE_TAG" .

echo "Docker image built successfully: $IMAGE_TAG"

