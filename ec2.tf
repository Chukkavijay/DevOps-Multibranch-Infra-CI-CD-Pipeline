#Docker Swarm Master/Manager Servers
resource "aws_instance" "master-1" {
  #ami                         = data.aws_ami.my_ami.id
  ami = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "AWSKEY"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "swarm-master-1"
    Env        = "Prod"
    Owner      = "chukka"
    CostCenter = "ABCD"
  }
}

#Docker Swarm Worker Servers
resource "aws_instance" "worker-1" {
  #ami                         = data.aws_ami.my_ami.id
    ami = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "AWSKEY"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "swarm-worker-1"
    Env        = "Prod"
    Owner      = "chukka"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "worker-2" {
  #ami                         = data.aws_ami.my_ami.id
  ami = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "AWSKEY"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "swarm-worker-2"
    Env        = "Prod"
    Owner      = "chukka"
    CostCenter = "ABCD"
  }
}
