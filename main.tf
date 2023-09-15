module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Nexus-artifactory"
  ami = "ami-0b825ad86ddcfb907"
  instance_type          = "t2.medium"
  key_name               = "vinod_aug2023"
  monitoring             = true
  vpc_security_group_ids = ["sg-076bbf8a4ce79b6aa"]
  user_data = file("nexus.sh")

}