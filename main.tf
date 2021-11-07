# --- s3/main.tf ---
data "aws_kms_key" "sse_key" {
    key_id = "alias/s3-sse-key"
}

resource "aws_s3_bucket" "kms_lab_bucket" {
    bucket = "kms-lab-bucket-######" #INSERT # HERE, OR CREATE RANDOM VAR

    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
              kms_master_key_id = data.aws_kms_key.sse_key.arn
              sse_algorithm = "aws:kms"
            }
        }
    }
}
