module "cluster-eks" {
  source = "fuchicorp/eks/aws"
  subnet_ids = ["subnet-0029962a9698c70f8", "subnet-021ad6bebf8ea374e"]
  region = "us-east-1"
  ssh_key_location = "${file("~/.ssh/id_rsa.pub")}"
  cluster_name = "tubes-aws-eks"
  cluster_version = "1.15"
  instance_type = "t2.medium"
  node_desired_capacity = "3"
  node_min_size = "3"
  node_max_size = "5"
  security_group_ids = ["sg-031d59d9aed143687"]
}
