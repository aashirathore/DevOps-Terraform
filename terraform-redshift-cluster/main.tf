resource "aws_s3_bucket" "example" {
  bucket = "my-tf-devops-buc123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

//Setup the redshift cluster
resource "aws_redshift_cluster" "example_redshift" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "mydb"
  master_username    = "devopsuser"
  master_password    = "Devops#demo123"
  node_type          = "dc2.large"
  cluster_type       = "single-node"
  publicly_accessible = "false"
}

