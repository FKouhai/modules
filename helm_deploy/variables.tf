variable "release" {
  description = "Helm release to use"
  type = string
}

variable "chart" {
  description = "Helm chart to use"
  type = string
}
variable "repo" {
  description = "Helm repo to add"
  type = string
}
variable "values_yml" {
  description = "path to values.yml file"
  type = string
}
variable "namespace" {
  description = "namespace to deploy the chart"
  type = string

}
