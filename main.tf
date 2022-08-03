resource "aws_instance" "this" {
  ami               = var.ami #data.aws_ami.this.id
  instance_type     = "t2.large"
  availability_zone = var.availability_zone

  #   lifecycle {
  #     ignore_changes = [ami]
  #   }
  user_data = templatefile("user_data/install_script.tpl",
    {
      ServerName = var.ServerName
    })
  iam_instance_profile = "EC2RoleToAccessS3Buckets" # usar o nome ao inves do arn
  key_name = "ec2-tutorial"
  tags = merge(var.tags)
}

#resource "aws_ebs_volume" "this" {
#  availability_zone = var.availability_zone
#  size              = 40
#}
#
#resource "aws_volume_attachment" "this" {
#  device_name = "/dev/sdh"
#  volume_id   = aws_ebs_volume.this.id
#  instance_id = aws_instance.this.id
#}

resource "aws_ssm_parameter" "device" {
  name        = "AA_runner_device"
  description = "The runner device"
  type        = "String"
  value       = var.runner_Device
  overwrite   = true
}

resource "aws_ssm_parameter" "user" {
  name        = "AA_runner_user"
  description = "The runner user"
  type        = "String"
  value       = var.runner_User
  overwrite   = true
}
