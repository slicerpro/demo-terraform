#Setup s3
resource "aws_s3_bucket" "2022saa_demo_terraform_s3" {
  bucket = "_2022-demo-terraform-s3"
  
  tags = {
    Name = "_2022-dem0-terraform-s3"
  }
}
