terraform {
  backend "s3" {
    bucket = "your_s3bucket_name"
    key = "terraform.tfstate"
    region = "your_region"
  }
}
