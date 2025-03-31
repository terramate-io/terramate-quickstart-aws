// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "kubernetes_namespace" "namespace" {
  metadata {
    annotations = {
      name = "app-prd"
    }
    labels = {
      "pod-security.kubernetes.io/enforce" = "baseline"
    }
    name = "app-prd"
  }
}
