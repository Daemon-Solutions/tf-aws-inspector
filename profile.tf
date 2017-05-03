module "inspector_iam_role" {
  source = "../tf-aws-iam-instance-profile"

  name         = "inspector-iam"
  ec2_describe = "1"
  s3_readonly  = "0"
}
