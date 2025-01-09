project_id  = "belajar-terraform-kubernetes"
region      = "asia-southeast1"
secret_name = "terraform-belajar-secret"
service_account = "terraform-sa@belajar-terraform-kubernetes.iam.gserviceaccount.com"

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