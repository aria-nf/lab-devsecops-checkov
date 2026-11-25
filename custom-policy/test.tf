# 1. Tanpa tag (FAILED)
resource "aws_s3_bucket" "no_tags" {
  bucket = "bucket-without-tags"
}

# 2. Tag tidak lengkap (FAILED)
resource "aws_s3_bucket" "partial_tags" {
  bucket = "bucket-partial-tags"
  tags = {
    owner = "devops-team"
  }
}

# 3. Tag lengkap (PASSED)
resource "aws_s3_bucket" "full_tags" {
  bucket = "bucket-with-all-tags"
  tags = {
    owner       = "devops-team"
    environment = "production"
    project     = "ecommerce"
  }
}
