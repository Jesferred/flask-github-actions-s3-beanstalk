variable "region" {
  default = "eu-central-1"
}

variable "app_name" {
  default = "flask-github-actions-s3-beanstalk6"
}


#---------------------------------------------------------



provider "aws" {
  region = var.region
}

resource "aws_elastic_beanstalk_application" "tftest" {
  name        = var.app_name
  description = "tf-test-desc"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = "${var.app_name}-env"
  application         = aws_elastic_beanstalk_application.tftest.name
  solution_stack_name = "64bit Amazon Linux 2 v3.7.2 running Python 3.8"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-ec2+elacticbeanstalk-service-role"
  }
}

resource "aws_s3_bucket" "testbucket" {
  bucket = "flask-github-actions-s3-beanstalk2"
}
