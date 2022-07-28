resource "aws_iam_instance_profile" "ec2_profile" {
    name = "ec2_profile"
    role = "arn:aws:iam::839180414951:role/EC2RoleToAccessS3Buckets"
}