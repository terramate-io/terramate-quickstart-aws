// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_namespace" "namespace" {
  metadata {
    annotations = {
      name = "app-stg"
    }
    labels = {
      "pod-security.kubernetes.io/enforce" = "baseline"
    }
    name = "app-stg"
  }
}
