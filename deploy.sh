#!/bin/bash
set -e

BUCKET="blog-leeabner"
DISTRIBUTION_ID="E3AB7CPXPIW8TJ"

echo "Building Hugo site..."
hugo --gc --minify

echo "Syncing to S3..."
aws s3 sync public/ s3://$BUCKET --delete

echo "Invalidating CloudFront..."
aws cloudfront create-invalidation \
  --distribution-id $DISTRIBUTION_ID \
  --paths "/*"

echo "Deploy complete."