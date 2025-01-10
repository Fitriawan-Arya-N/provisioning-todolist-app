project_id  = "belajar-terraform-kubernetes"
region      = "us-central1"
service_account = "terraform-sa@belajar-terraform-kubernetes.iam.gserviceaccount.com"

//gke
gke_cluster_name = "gke-cluster-todolist"
gke_location = "us-central1-f"
machine_type_node = "e2-micro"
machine_disk_node = 20
node_count = "3"
disk_type_node = "pd-balanced"

//vpc
network_name = "my-vpc-netdevops"