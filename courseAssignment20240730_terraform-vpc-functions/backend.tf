terraform {
  backend "s3" {
    bucket = "techstarter-bil-iac"
    key    = "ec2-example/vpc.tfstate"
    region = "eu-central-1"
  }
}