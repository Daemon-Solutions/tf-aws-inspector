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

module "innervision_iam_inspector_role" {
  source = "c:/users/sdatt/documents/bashton/innervision-aws/terraform/localmodules/tf-aws-iam-instance-profile" #"../localmodules/tf-aws-iam-instance-profile"

  name         = "innervision-inspector-iam"
  ec2_describe = "1"
  s3_readonly  = "0"
}
