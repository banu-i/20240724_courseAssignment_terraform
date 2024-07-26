terraform {
  backend "s3" {
    bucket = "myiacs3bucket"
    key    = "ec2-example/terraform.tfstate"
    region = "eu-central-1"
  }
}