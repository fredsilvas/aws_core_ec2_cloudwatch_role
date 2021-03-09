##############################################################################################
### VARIAVEIS PROJETO
variable "data_criacao" {
  description = "creation date of this project. padrão dd-mm-yyyy-hh-mm-ss(horario local)"
  default = "19-11-2020-16-11-00"
}

variable "centro_de_custo" {
  description = "Centro de Custo do Projeto"
  default     = "DTIC"
}

variable "proprietario" {
  description = "Proprietário do Projeto"
  default     = ""
}

variable "chamado_interno" {
  description = "Numero do chamado relacionado a este projeto"
  default     = "GLPI=XXXXX"  
}

variable "ambiente" {
  description = "Ambiente do Projeto"
  default     = "All"
}

variable "projeto" {
  description = "Projeto"
  default     = "IAM-Roles"
}

variable "vpc" {
  description = "VPC em que este projeto está rodando"
  default     = "All"
}

variable "responsavel_infra" {
  description = "Responsavel de Infra deste Projeto"
  default     = "André Frederico Lucas da Silva"
}

variable "responsavel_dev" {
  description = "Responsavel de Sistemas deste Projeto"
  default     = ""
}

variable "responsavel_db" {
  description = "Responsavel de Banco de Dados"
  default     = ""
}



##############################################################################################
### VARIAVEIS AWS
variable "aws_region" {
  description = "vpc aws region"
	default = "sa-east-1"
}