terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"  # Replace with your S3 bucket name
    key            = "path/to/your/terraform.tfstate" # Specify the path for the state file
    region         = "eu-north-1"                       # Specify your AWS region
  }
}
