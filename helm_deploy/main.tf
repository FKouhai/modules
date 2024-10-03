resource "helm_release" "helm" {
  name = var.release
  repository = var.repo
  chart = var.chart
  namespace = var.namespace
  values = [
    "${file("${var.values_yml}")}"
 ]
}
