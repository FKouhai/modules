variable "app_name" {
  type = string
  description = "Application name"
}
variable "argo_ns" {
  type = string
  description = "argocd namespace"
}
variable "project" {
  type = string
  description = "argocd project"
}
variable "k8s_server" {
  type = string
  description = "dest k8s cluster"
}
variable "dest_ns" {
  type = string
  description = "destination k8s namespace"
}
variable "repo" {
  type = string
  description = "helm repo"
}
variable "chart" {
  type = string
  description = "helm chart"
}
variable "target_revision" {
  type = string
  description = "helm target revision"
}
variable "helm_release" {
  type = string
  description = "helm release name"
}
variable "value_files" {
  type = list(string)
  description = "Value file"
}
variable "local_repo" {
  type = string
  description = "git repo url, that has the values.yml file"
}
