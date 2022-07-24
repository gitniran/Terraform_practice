variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_instance" {
  type    = string
  default = "t2.micro"

}

variable "keypair" {
    default = "itadmin_key.ppk"
  
}