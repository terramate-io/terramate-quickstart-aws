generate_hcl "namespace.tf" {
  stack_filter {
    project_paths = ["**/stacks/terraform/envs/*/eks/apps"]
  }

  content {
    resource "kubernetes_namespace" "namespace" {
      metadata {
        name = global.eks.namespace
        annotations = {
          name = global.eks.namespace
        }
        labels = {
          "pod-security.kubernetes.io/enforce" = "baseline"
        }
      }
    }
  }
}
