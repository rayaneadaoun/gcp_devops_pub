variable "project-id" {
    type = string
    default = "rayane-devops-test21"
}
variable "region" {
    type = string
    default = "europe-west1-b"
}
variable "service-account-id" {
    type = string
    default = "480598896473-compute@developer.gserviceaccount.com"
}
variable "pub-key-file" {
    type = string
    default = "~/.ssh/id_rsa.pub"
}