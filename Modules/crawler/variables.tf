variable "create" {
  default = true
}
variable "crawler_name" {
  default = "TR-crawler-test"
}
variable "dbname" {
  default = "DB_test-TR"
}
variable "gluerolearn" {
  default = "arn:aws:iam::033971577717:role/AWSGlueServiceRole-job"
}
variable "s3path_name" {
  default = ""
}
