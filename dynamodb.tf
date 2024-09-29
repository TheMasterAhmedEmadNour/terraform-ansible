# resource "aws-dynamodb_table" "lock" {
#     name           = "terraformlock"
#     billing_mode   = "PAY_PER_REQUEST"
#     hash_key       = "locK ID"

#     attribute {
#         name = "lock ID"
#         type = "S"
#     }
# }