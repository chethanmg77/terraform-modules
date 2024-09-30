resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = var.billing_mode

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  dynamic "attribute" {
    for_each = var.range_key != "" ? [var.range_key] : []
    content {
      name = var.range_key
      type = var.range_key_type
    }
  }

  tags = merge(
    {
      Name        = var.table_name
      Environment = var.environment
    },
    var.tags
  )
}


