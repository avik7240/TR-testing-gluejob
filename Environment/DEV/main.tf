data "aws_caller_identity" "current" {}

#imported variables for aws_glue_job

variable "glue_job-name" {}
variable "glue_glue_rolearn" {}
variable "glue_env_name" {}
variable "glue_glue_timeout" {}
variable "glue_glue_desc" {}
variable "glue_glue_max_retries" {}
variable "glue_s3script_location" {}
variable "glue_language_job" {}
variable "glue_temp_directory" {}
variable "glue_create" {}
variable "glue_dpunumber" {}

#imported variables for aws_crawler

variable "crawl_create" {}
variable "crawl_crawler_name" {}
variable "crawl_dbname" {}
variable "crawl_gluerolearn" {}
variable "crawl_s3path_name" {}

#######################
# Glue Job
#######################

module "glue_job_TR" {
    source = "../../Modules/glue-job"

    glue_rolearn = var.glue_glue_rolearn
    create = var.glue_create
    job-name = var.glue_job-name
    env_name = var.glue_env_name
    glue_timeout = var.glue_glue_timeout
    glue_desc = var.glue_glue_desc
    glue_max_retries = var.glue_glue_max_retries
    s3script_location = var.glue_s3script_location
    language_job = var.glue_language_job
    temp_directory = var.glue_temp_directory
    dpunumber = var.glue_dpunumber
}

#######################
# Glue Crawler
#######################

module "glue_crawler" {
      source = "../../Modules/crawler"

      create = var.crawl_create
      crawler_name = var.crawl_crawler_name
      dbname = var.crawl_dbname
      gluerolearn = var.crawl_gluerolearn
      s3path_name = var.crawl_s3path_name    
}