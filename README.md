# gcp_devops_pub
# *Table of contents*
1. [Description](#description)
2. [Terraform code](#source)
3. [Github Actions](#github)


## *Description*
This project allows to write infrastructure as code and to deploy it thanks to terraform in the Google platform cloud GCP .

## *Terraform code*
The following terraform scripts allow the deployment of:
- 2 virtual machines in the GCP cloud using the resource compute engine
- a dataset and a table on bigquery 

For this you need to set up your variables in the [variables.tf](variables.tf) file and run the following commands
#### Requirements:
- Connect to your gcp account with gcloud tools (you must install before [gcloud](https://cloud.google.com/sdk/docs/install?hl=fr))
```
$ gcloud auth application-default login
```
#### terrafrom command
PS: Select your terraform namespace depending on the branch you are in
- branch "develop"      -> namespace dev 
- branch "integration"  -> namespace int 
- branch "main"         -> namespace prd

```bash  
# on main branch 
$ terraform init 
$ terraform workspace select prd
$ terraform apply 
```

## *Github Actions*
If you want to deploy your infrastructure on gcp automatically and without worrying about the namespaces in function of the branches, you just have to push your configuration and the [pipeline](.github/workflows/terraform.yml) thanks to github actions will do the job.


To do this you just need to set up a github secret that you will name "GCP_SERVICE_ACCOUNT_KEY" which will contain the key of your google service account with which you want to build your infrastructure on the cloud .

