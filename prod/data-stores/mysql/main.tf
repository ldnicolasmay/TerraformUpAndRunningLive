module "mysql" {
  #source = "../../../../modules/data-stores/mysql"
  source = "github.com/ldnicolasmay/TerraformUpAndRunningModules//data-stores/mysql?ref=v0.0.1"

  db_name     = "mysql_prod"
  db_username = var.db_username
  db_password = var.db_password
}