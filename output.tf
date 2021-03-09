##############################################################################################
### OUTPUT
output "Ec2_CloudWatch_Role_Name" {
  value = aws_iam_role.ec2_cloudwatch_role.name
}

output "Ec2_CloudWatch_Role_ARN" {
  value = aws_iam_role.ec2_cloudwatch_role.arn
}

output "Ec2_CloudWatch_Role_Instance_Profile_Name" {
  value = aws_iam_instance_profile.ec2_cloudwatch_role_profile.name
}

output "Ec2_CloudWatch_Role_Instance_Profile_ARN" {
  value = aws_iam_instance_profile.ec2_cloudwatch_role_profile.arn
}

output "Ec2_CloudWatch_Role_Instance_Profile_ID" {
  value = aws_iam_instance_profile.ec2_cloudwatch_role_profile.id
}