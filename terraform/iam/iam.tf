locals {
  aws_path = "/ucsb/"
}

data "aws_caller_identity" "source" {}

resource "aws_iam_group" "route53_admin" {
  name = "ucsb-route53-administrators"
  path = local.aws_path
}

resource "aws_iam_group_policy" "route53_group_policy" {
    name                            = "ucsb-group-policy-route53-administrators"
    group                           = aws_iam_group.route53_admin.name
    policy                          = data.aws_iam_policy_document.route53_group_assume_policy.json
}

data "aws_iam_policy_document" "route53_group_assume_policy" {
    statement {
        actions                     = ["sts:AssumeRole"]
        resources = [
            aws_iam_role.route53_admin_role.arn
        ]
    }
}

data "aws_iam_policy_document" "route53_role_trust_policy" {
  statement {
    actions                         = ["sts:AssumeRole"]
    effect                          = "Allow"
    principals {
      type                          = "AWS"
      #identifiers                   = [aws_iam_group.route53_admin.arn]
      identifiers                   = [ "arn:aws:iam::${data.aw  }:root"]
    }
  }
}

resource "aws_iam_policy" "route53_policy_full_access" {
    name = "ucsb-policy-route53-administrators"
  policy = data.aws_iam_policy_document.route53_policy_full_access.json
}

data "aws_iam_policy_document" "route53_policy_full_access" {
    statement {
        effect = "Allow"
        actions = [
            "route53:*",
            "route53domains:*",
            "cloudfront:ListDistributions",
            "elasticloadbalancing:DescribeLoadBalancers",
            "elasticbeanstalk:DescribeEnvironments",
            "s3:ListBucket",
            "s3:GetBucketLocation",
            "s3:GetBucketWebsite",
            "ec2:DescribeVpcs",
            "ec2:DescribeVpcEndpoints",
            "ec2:DescribeRegions",
            "sns:ListTopics",
            "sns:ListSubscriptionsByTopic",
            "cloudwatch:DescribeAlarms",
            "cloudwatch:GetMetricStatistics"
        ]
        resources = ["*"]
    }
    statement {
        effect = "Allow"
        actions = [
            "apigateway:GET"
        ]
        resources = [
            "arn:aws:apigateway:*::/domainnames"
        ]
    }

    statement {
        effect = "Allow"
        actions = [
            "iam:ListRoles",
            "sts:AssumeRole"
        ]
        resources = ["*"]
    }
}

resource "aws_iam_role" "route53_admin_role" {
    name                            = "ucsb-role-route53-administrators"
    path                            = local.aws_path
    assume_role_policy              = data.aws_iam_policy_document.route53_role_trust_policy.json
    managed_policy_arns             = [aws_iam_policy.route53_policy_full_access.arn  ]
}

output "aws_iam_role_info" {
    value = aws_iam_role.route53_admin_role  
}

output "aws_iam_group_info" {
    value = aws_iam_group.route53_admin
}