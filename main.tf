resource "aws_security_group" "allow_ssh_and_http" {
    name = "allow_ssh_and_http"
    description = "Creating security group for KPMG test"
    dynamic "ingress" {
        for_each = local.group_details
        content {
            description = ingress.key        ## It will take "Http" and "SSH" from locals 
            from_port = ingree.value.port    ## It will take value 80 and 22 from locals  
            to_port  = ingress.value.port
            protocol = "tcp"
            cidr_block = ingress.value.cidr_block  ## it will take  "10.0.0.0/16" and "0.0.0.0/0" from locals.
        }
    }
}