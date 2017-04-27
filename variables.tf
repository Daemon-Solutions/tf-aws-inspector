variable "name" {}

variable "envname" {}

variable "duration" {}

# security: arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6
# runtime: arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-lLmwe1zd 
# cis: arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F
# vulnerabilities: arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh

variable "rules" {
  default = [
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-lLmwe1zd",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh",
  ]
}
