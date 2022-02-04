#Setup s3
resource "aws_s3_bucket" "2022saa_demo_terraform_s3" {
  bucket = "2022-demo-terraform-s3"
  
  tags = {
    Name = "2022-dem0-terraform-s3"
  }
}
