variable "cluster_name" {
  default = "daytrader_cluster"
}

variable "resource_group_name" {
  default = "daytrader_rg"
}

variable "environment" {
  default = ""
}

variable "location" {
  default = "East US"
}

variable "node_count" {
  default = 1
}

variable "node_size" {
  default = "Standard_D2_v2"
}

#variable "service_principal" {
#  type = object({
##    client_id     = "a5e41b3d-b36f-4d5a-b08b-1ab20523039c"
##    client_secret = "ttqmSeefg06Z.vZRhQA2Gkq21tnC.ML9_l"
#    client_id     = string
#    client_secret = string
#  })
#  description = "The terraform service principal to use"
#}

variable "client_id" {  
    default = "a5e41b3d-b36f-4d5a-b08b-1ab20523039c"
}
variable "client_secret" {
    default = "ttqmSeefg06Z.vZRhQA2Gkq21tnC.ML9_l"
}
#variable "diagnostics_workspace_id" {
#  description = "log analytics workspace id for cluster audit"
#}
variable dns_prefix {
    default = "xyz"
}
# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}
