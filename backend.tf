terraform {
    backend "s3" {
      bucket = "sandbox-devops-infra"
      key = "sandbox-infra/terraform.tfstate"
        region = "us-east-1"
        encrypt = true 
        dynamodb_table = "terraform_aws-networking_state_lock"
  
  }
}