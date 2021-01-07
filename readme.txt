Create a service principal for Terraform
    
    az ad sp create-for-rbac --name [choose a name for terraform sp]
    
Keep track of the appId and password and tenant

Create another service principal for AKS
    
    az ad sp create-for-rbac --name [choose a name for aks sp]

Keep track of the appId and password and tenant