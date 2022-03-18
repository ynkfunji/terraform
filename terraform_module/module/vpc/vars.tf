variable "vpc_cidr" {

  type = string

  description = "vpc cidr in our module"

}

variable "tenancy" {

  type = string

  description = "tenancy for vpc"

}

variable "subnet_cidr_public" {

  type = string

  description = "public subnet for our vpc"

}

variable "subnet_cidr_newpublicsn" {

  type = string

  description = "new public subnet for our vpc"

}

variable "subnet_cidr_private" {

  type = string

  description = "private subnet for our vpc"

}

