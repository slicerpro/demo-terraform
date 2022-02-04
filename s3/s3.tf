#Setup s3
resource "aws_s3_bucket" "2022saa_demo_terraform_s3" {
  bucket = "demo-terraform-s3"
  
  tags = {
    Name = "demo-terraform-s3"
  }
}
