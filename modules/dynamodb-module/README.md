# DynamoDB Table Module

This module creates a DynamoDB table in AWS with optional range key support.

## Inputs

- `table_name`: The name of the DynamoDB table.
- `billing_mode`: The billing mode for the DynamoDB table (default: `PAY_PER_REQUEST`).
- `hash_key`: The name of the hash key.
- `hash_key_type`: The type of the hash key (S or N).
- `range_key`: The name of the range key (optional).
- `range_key_type`: The type of the range key (S or N, optional).
- `environment`: The environment (e.g., dev, uat, prod).
- `tags`: A map of additional tags to assign to the DynamoDB table (default: `{}`).

## Outputs

- `table_id`: The ID of the DynamoDB table.
- `table_name`: The name of the DynamoDB table.
- `table_arn`: The ARN of the DynamoDB table.

## Example Usage

```hcl
module "dynamodb_table" {
  source        = "./dynamodb-table"
  table_name    = "my-dynamodb-table"
  billing_mode   = "PROVISIONED"
  hash_key      = "ID"
  hash_key_type = "S"
  range_key     = "Timestamp"
  range_key_type = "N"
  environment   = "dev"
  tags = {
    Project = "MyProject"
    Owner   = "YourName"
  }
}
