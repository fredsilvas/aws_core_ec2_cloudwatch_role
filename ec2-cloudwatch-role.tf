##############################################################################################
### GETTING DEFAULT POLICY
data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}



##############################################################################################
### CREATING ROLE
resource "aws_iam_role" "ec2_cloudwatch_role" {
  name               = "ec2-cloudwatch-role"
  description        = "Role to permit Ec2 Instance to communicate with CloudWatch"
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json

  tags = {
    Name             = "ec2-cloudwatch-role"
    CentroDeCusto    = var.centro_de_custo
    Proprietario     = var.proprietario
    ChamadoInterno   = var.chamado_interno
    Ambiente         = var.ambiente
    Projeto          = var.projeto
    Vpc              = var.vpc
    ResponsavelInfra = var.responsavel_infra
    ResponsavelDev   = var.responsavel_dev
    ResponsavelDb    = var.responsavel_db
    Critico          = true
    DataCriacao      = var.data_criacao
    DataAlteracao    = formatdate("DD-MM-YYYY-hh-mm-ss", timeadd(timestamp(), "-3h"))
    Sensibilidade    = "5"
    Criptografado    = false
  }
}



##############################################################################################
### ATTACH POLICY TO ROLE
resource "aws_iam_role_policy_attachment" "ec2_cloudwatch_role_attach" {
  role       = aws_iam_role.ec2_cloudwatch_role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}



##############################################################################################
### CREATE ROLE EC2 PROFILE
resource "aws_iam_instance_profile" "ec2_cloudwatch_role_profile" {
  name = "ec2_cloudwatch_role"
  role = aws_iam_role.ec2_cloudwatch_role.name
}