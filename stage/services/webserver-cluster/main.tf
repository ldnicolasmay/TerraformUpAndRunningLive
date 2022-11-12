module "webserver_cluster" {
  #source = "../../../../modules/services/webserver-cluster"
  source = "github.com/ldnicolasmay/TerraformUpAndRunningModules//services/webserver-cluster?ref=v0.0.1"

  cluster_name  = "webservers-stage"
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2

  db_remote_state_bucket = "terraform-up-and-running-state-ldnicolasmay"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
}
