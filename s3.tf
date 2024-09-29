# resource "aws_s3_bucket" "s3" {
#   bucket = "omda.bucket.try"

# }
# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.s3.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }