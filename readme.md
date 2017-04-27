This module enables usage of Amazon Inspector.

## Usage

```
module "web_inspector" {
  source = "git::ssh://git@gogs.bashton.net:Bashton-Terraform-Modules/tf-aws-inspector"

  name     = "${var.customer}-web"
  envname  = "${var.envname}"
  duration = "300"

  rules = [
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-lLmwe1zd",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F",
  ]
}
```

This will create an assessment template, target, and resource group for resources tagged with a suffix of "web" and matching the environment name specified in params.

The default value is set to use the ARNs from eu-west-1

## Specifying rule ARNs
Rule ARNs for other regions can be found through the AWS CLI with `aws inspector list-rules-packages`. The output seems to consistently list the ARNs in the following order (tested on eu-west-1 and us-west-2):
1. Security best practices
2. Runtime behaviour analysis
3. CIS Operating System Security Configuration Benchmarks
4. Common Vulnerabilities and Exposures