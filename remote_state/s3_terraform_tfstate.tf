resource "aws_s3_bucket" "terraform_state" {
  bucket = "service-name-terraform-state" # TODO refix service-name

  versioning {
    enabled = true
  }
}
