
# Output the url
output "base_url" {
  value = aws_s3_bucket.bucket.website_endpoint
}
