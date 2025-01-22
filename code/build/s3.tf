provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "96530d48-d6ed-4037-82cb-3ceeaee5d660"
    git_commit           = "79009d00b699055b87136e507ba5196a34d5967e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 16:28:34"
    git_last_modified_by = "santhosh_subramanian@baxter.com"
    git_modifiers        = "santhosh_subramanian"
    git_org              = "sans1986"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
