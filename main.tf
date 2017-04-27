resource "aws_inspector_resource_group" "inspector" {
  tags {
    Name = "${var.name}"
    Env  = "${var.envname}"
  }
}

resource "aws_inspector_assessment_target" "target" {
  name               = "${var.name}"
  resource_group_arn = "${aws_inspector_resource_group.inspector.arn}"
}

resource "aws_inspector_assessment_template" "template" {
  name       = "${var.name}"
  target_arn = "${aws_inspector_assessment_target.target.arn}"
  duration   = "${var.duration}"

  rules_package_arns = ["${var.rules}"]
}

module "inspector_iam_role" {
  source = "../localmodules/tf-aws-iam-instance-profile"

  name         = "inspector-iam"
  ec2_describe = "1"
  s3_readonly  = "0"
}
