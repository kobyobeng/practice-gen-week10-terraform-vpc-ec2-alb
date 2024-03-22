terraform {
  backend "s3" {
    bucket         = "prac-gen-ko-week10-terraform"
    key            = "prac-gen-terra-week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "prac-state-log"
  }
}
