resource "argocd_application" "helm" {
  metadata {
    name = var.app_name
    namespace = var.argo_ns
  }
  spec {
    project = var.project
    destination {
      server = var.k8s_server
      namespace = var.dest_ns
    }
    sync_policy {
      automated {
        prune = true
        self_heal = true
        allow_empty = true
      }
      sync_options = ["CreateNamespace=true"]
    }
    source {
      repo_url = var.repo
      chart = var.chart
      target_revision = var.target_revision
      helm {
        release_name = var.helm_release
        value_files = var.value_files
      }
    }
    source {
      repo_url = var.local_repo
      target_revision = "HEAD"
      ref = "values"
    }
  }
}
