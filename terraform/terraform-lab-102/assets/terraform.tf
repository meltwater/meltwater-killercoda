terraform {
  required_version = ">= 1.2"
}

provider "aws" {
  region = "eu-west-1"

  access_key = "test"
  secret_key = "test"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2            = "http://localstack:4566"
    iam            = "http://localstack:4566"
    cloudwatch     = "http://localhstack:4566"
    route53        = "http://localstack:4566"
  }
}
