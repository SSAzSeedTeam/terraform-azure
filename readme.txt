#Create a service principal for Terraform
    
    az ad sp create-for-rbac --name shibu_azure_tf_sp

{
  "appId": "a5e41b3d-b36f-4d5a-b08b-1ab20523039c",
  "displayName": "shibu_azure_tf_sp",
  "name": "http://shibu_azure_tf_sp",
  "password": "ttqmSeefg06Z.vZRhQA2Gkq21tnC.ML9_l",
  "tenant": "95c2db94-2a7c-4c55-876b-e53268d3fb83"
}
    
#note down appId and password and tenant

#Create another service principal for AKS
    
    az ad sp create-for-rbac --name shibu_azure_aks_sp
    
{
  "appId": "0c9ce378-3de1-4713-bd3b-dae248e6cb12",
  "displayName": "shibu_azure_aks_sp",
  "name": "http://shibu_azure_aks_sp",
  "password": "okI4wv8K-F8fr-~f7ErMoVxGiLZ_mQ6056",
  "tenant": "95c2db94-2a7c-4c55-876b-e53268d3fb83"
}
#note down the appId and password and tenant

