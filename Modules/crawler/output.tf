
output "crawler_name" {
  value = aws_glue_crawler.TR_glue_crawler[0].id
}
