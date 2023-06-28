variable "aws_access_key" {
    type = string
}

variable "aws_secret_key" {
    type = string
}

variable "aws_region" {
    type = string
    default = "eu-west-1"
}

variable "AMIS" {
    type = map
    default = {
        "eu-west-1" = "AMIID-12345"
        "eu-east-1" = "AMIID-67890"
    }
}
