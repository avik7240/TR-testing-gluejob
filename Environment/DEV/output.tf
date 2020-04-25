output "glue_job_name" {
  value = module.glue_job_TR.glue_job_ID
}

  output "crawl_name" {
    value = module.glue_crawler.crawler_name
  }