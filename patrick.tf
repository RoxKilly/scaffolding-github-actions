resource "aws_s3_bucket" "resourcely-patrick_xfvxybJnMRN2NEYi" {
  bucket = "resourcely-patrick"
}

resource "aws_s3_bucket_public_access_block" "resourcely-patrick_xfvxybJnMRN2NEYi" {
  bucket                  = aws_s3_bucket.resourcely-patrick_xfvxybJnMRN2NEYi.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "resourcely-patrick_xfvxybJnMRN2NEYi" {
  bucket = aws_s3_bucket.resourcely-patrick_xfvxybJnMRN2NEYi.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "resourcely-patrick_xfvxybJnMRN2NEYi" {
  bucket = aws_s3_bucket.resourcely-patrick_xfvxybJnMRN2NEYi.id

  versioning_configuration {
    status = "Enabled"
  }
}
