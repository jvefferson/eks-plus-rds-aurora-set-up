data "terraform_remote_state" "remote" {
  backend = "s3"
  config = {
    bucket = "terraform-backend-for-release"
    key    = "env:/dev/path/to/my/key"
    region = "us-east-1"
    }
  }