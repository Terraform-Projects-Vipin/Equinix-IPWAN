provider "equinix" {

  client_id     = var.ecx_client_id
  client_secret = var.ecx_client_secret
}


resource "equinix_fabric_network" "GLOBALIPWAN_Network123" {
  name  = var.IPWAN_Name
  type  = "IPWAN"
  scope = "GLOBAL"
  notifications {
    type   = "ALL"
    emails = [var.emails]
  }
  project {
    project_id = var.project_id

  }
}
