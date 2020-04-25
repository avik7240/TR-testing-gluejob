resource "aws_glue_job" "glue_job_TR" {
    
    count = var.create ? 1 : 0
    name = var.job-name 
    role_arn = var.glue_rolearn
    tags = {
           Name = var.job-name
           Env = var.env_name 
           }
            
    timeout = var.glue_timeout
    allocated_capacity = var.dpunumber
    description = var.glue_desc
    max_retries = var.glue_max_retries
    
    command {
        script_location = var.s3script_location
}

    default_arguments = {
         "-- job-language" = var.language_job 
         "-- TempDir" = var.temp_directory
    }
}