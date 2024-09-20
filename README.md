CI/CD Pipeline, using Github Actions.

flask --> github --> github actions --> AWS S3 Bucket --> AWS ElasticBeanstalk

Instructions:
1. Set up infrastructure using Terraform (terraform apply)
2. Take environments from outputs.tf
3. Paste into .github/main.yaml
4. Set up Github Actions via main.yml