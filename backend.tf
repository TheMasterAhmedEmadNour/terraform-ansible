# terraform {
#   backend "s3" {
#     bucket = aws_s3_bucket.s3
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#     dynamodb_table = aws-dynamodb_table.locK
#     encypt = true
#     profile = "my-user-2"
#   }
# }
