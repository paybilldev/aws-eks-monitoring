data "aws_eks_addon_version" "this" {
  addon_name         = local.name
  kubernetes_version = try(var.addon_config.kubernetes_version, var.kubernetes_version)
  most_recent        = try(var.addon_config.most_recent, true)
}
