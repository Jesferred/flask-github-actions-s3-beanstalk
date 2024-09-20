output "EB_APPLICATION_NAME" {
  value = aws_elastic_beanstalk_application.tftest.name
}

output "EB_ENVIRONMENT_NAME" {
  value = aws_elastic_beanstalk_environment.tfenvtest.name
}

output "AWS_REGION_NAME" {
  value = var.region
}
