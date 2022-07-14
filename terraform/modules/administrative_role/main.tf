data "aws_eks_cluster" "target_eks_cluster" {
    name                            = var.eks_cluster_name
}

data "aws_caller_identity" "source" {}

resource "aws_iam_policy" "policy_eks_readonly" {
    name                            = var.policy_name
    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
            Action = [
              "eks:DescribeCluster",
                "eks:ListClusters",
                "eks:ListNodegroups",
                "eks:DescribeFargateProfile",
                "eks:ListTagsForResource",
                "eks:ListAddons",
                "eks:DescribeAddon",
                "eks:ListFargateProfiles",
                "eks:DescribeNodegroup",
                "eks:ListUpdates",
                "eks:DescribeUpdate",
                "eks:AccessKubernetesApi",
                "eks:DescribeAddonVersions"
            ]
            Effect    = "Allow"
            Resource  = "*"
        }
      ]
    })

    tags                            = var.tags
}

resource "aws_iam_role" "assume_role" {
    name                            = var.role_name
    assume_role_policy              = data.aws_iam_policy_document.assume_role_trust_policy.json
    managed_policy_arns             = [aws_iam_policy.policy_eks_readonly.arn]

    tags                            = var.tags
}

data "aws_iam_policy_document" "object_policy" {
    statement {
      actions = [
        "sts:AssumeRole"
      ]
      resources = [
        aws_iam_role.assume_role.arn
      ]
    }
}

resource "aws_iam_group" "iam_group" {
    name                            = var.group_name
}

resource "aws_iam_group_policy" "iam_group_policy" {
    name                            = "ucsb-pol-eks-kaiwen"
    group                           = aws_iam_group.iam_group.name
    policy                          = data.aws_iam_policy_document.object_policy.json
}


data "aws_iam_policy_document" "assume_role_trust_policy" {
  statement {
    actions                         = ["sts:AssumeRole"]
    principals {
      type                          = "AWS"
      identifiers                   = ["arn:aws:iam::${data.aws_caller_identity.source.account_id}:root"]
    }
  }
}