##############################################################################################
### BACKEND
terraform {
  backend "s3" {
    bucket  = "terraform-state-files-fredsilvas"
    key     = "core/iam/terraform-ec2-cloudwatch-role.tfstate"
    region  = "sa-east-1"
    encrypt = "true"
  }
}