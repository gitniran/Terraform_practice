variable "aws_region" {
    type = string
    default = "us-east-1" 
}

variable "aws_instance" {
   type = string
   default = "t2.micro"
  
}

variable "ami_id" {
  default = "ami-0cff7528ff583bf9a"
}