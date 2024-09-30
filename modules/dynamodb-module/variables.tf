variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The name of the hash key"
  type        = string
}

variable "hash_key_type" {
  description = "The type of the hash key (S or N)"
  type        = string
}

variable "range_key" {
  description = "The name of the range key (optional)"
  type        = string
  default     = ""
}

variable "range_key_type" {
  description = "The type of the range key (S or N, optional)"
  type        = string
  default     = ""
}

variable "environment" {
  description = "The environment (e.g., dev, uat, prod)"
  type        = string
}

variable "tags" {
  description = "Additional tags for the DynamoDB table"
  type        = map(string)
  default     = {}
}
