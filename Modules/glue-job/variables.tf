variable "create" {
  default = true
}

variable "job-name" {
  default = "TR-gluejob-test"
}
 
variable "glue_rolearn" {
  default = "arn:aws:iam::033971577717:role/AWSGlueServiceRole-job"
}

variable "env_name" {
  default = ""
}

variable "s3script_location" {

  default = "s3://mygluebucket-csv/Read"

}

variable "glue_timeout" {
  default = 10
}

variable "glue_max_retries" {
  default = 2
}
variable "dpunumber" {
  default = 1
}

variable "glue_desc" {
  default = "this is test job for TR"
}
variable "language_job" {
   default = "python"
}

variable "temp_directory" {
  default = ""
}
