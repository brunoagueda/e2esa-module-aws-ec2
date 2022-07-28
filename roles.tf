resource "aws_iam_instance_profile" "ec2_profile" {
    name = "ec2_profile"
    role = EC2RoleToAccessS3Buckets
}