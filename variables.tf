/* Environment name */
variable "name" {
  description = "This value will be name and value for the 'Name' tag on resources created by this module"
  type = "string"
}

variable "envname" {
  description = "This will become the value of the 'Env' tag on resources created by this module"
  type = "string"
}

/* Inspector variables */
variable "duration" {
  description = "The duration of the Inspector run"
  type = "string"
}

/* Defaults for 'rules'
 security        arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6
 runtime         arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-lLmwe1zd 
 cis             arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F
 vulnerabilities arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh
*/

variable "rules" {
  description = "The ARNs of the rules to be used during the Inspector run"
  type = "string"
  default = [
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-lLmwe1zd",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh",
  ]
}
