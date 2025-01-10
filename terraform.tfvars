project_id  = "belajar-terraform-kubernetes"
region      = "us-central1"
service_account = "terraform-sa@belajar-terraform-kubernetes.iam.gserviceaccount.com"

//gke
gke_cluster_name = "gke-cluster-todolist"
gke_location = "us-central1"
machine_type_node = "e2-micro"
machine_disk_node = 30
node_count = "3"

//vpc
network_name = "my-vpc-netdevops"
network_name_public = "subnetwork-vpc-netdevops-public"
network_name_private = "subnetwork-vpc-netdevops-private"
subnet_private_cidr = "10.10.1.0/24"
subnet_public_cidr = "10.10.2.0/24"