resource "aws_route53_zone" "r53_zones" {
    for_each            = var.zones

    name                = each.value.name
}