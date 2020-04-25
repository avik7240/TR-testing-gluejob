resource "aws_glue_crawler" "TR_glue_crawler" {

    count = var.create ? 1 : 0 
    name = var.crawler_name
    database_name = var.dbname 
    role = var.gluerolearn

    s3_target  {
        path = var.s3path_name
    }
}