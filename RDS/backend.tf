terraform {
  backend "s3" {
    bucket = "terraform-backend-for-release"
    key    = "path/to/my/eks"
    region = "us-east-1"
  }
}