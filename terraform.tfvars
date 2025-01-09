project_id  = "belajar-terraform-kubernetes"
region      = "asia-southeast1"
secret_name = "terraform-belajar-secret"
service_account = "terraform-sa@belajar-terraform-kubernetes.iam.gserviceaccount.com"

//bastion
bastion_name = "my-bastion-host"
machine_type_bastion = "e2-medium"
zone_bastion = "asia-southeast1-a"
image_bastion = "ubuntu-2204-jammy-v20241218"

//gke
gke_cluster_name = "gke-cluster-todolist"
gke_location = "asia-southeast1"
machine_type_node = "e2-micro"
node_count = "4"

//vpc
network_name = "my-vpc-netdevops"
network_name_public = "subnetwork-vpc-netdevops-public"
network_name_private = "subnetwork-vpc-netdevops-private"
subnet_private_cidr = "10.10.1.0/24"
subnet_public_cidr = "10.10.2.0/24"