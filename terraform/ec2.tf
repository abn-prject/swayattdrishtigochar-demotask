resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-073122a95b20b05b7"]                     #security group are list that why we kept []*
    instance_type = "t3.micro"
    user_data = file("workshop.sh")
   
    tags = {
        Name = "work-station"
    }
}


