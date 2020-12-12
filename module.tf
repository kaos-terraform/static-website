
// Define the bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.domain}.${var.service}.${var.environment}.static_website_bucket"
  acl    = var.public ? "public-read" : "private"
  policy = file("policy.json")

  website {
    index_document = var.index_document
  }

  tags = {
    Domain      = var.domain
    Environment = var.environment
    Service     = var.service
  }
}

// Put files in the bucket
resource "aws_s3_bucket_object" "object1" {
  for_each = fileset(var.source_directory, "*")
  bucket = aws_s3_bucket.bucket.id
  key = each.value
  source = "${var.source_directory}${each.value}"
  etag = filemd5("${var.source_directory}${each.value}")
}