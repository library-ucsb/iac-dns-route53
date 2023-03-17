locals {
  rev97-zone_id = aws_route53_zone.r53_zones["reverse-97-111-128-in-addr-arpa"].zone_id
}

resource "aws_route53_record" "_222-97-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev97-zone_id
  name    = "222.97.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["managefilemaker.library.ucsb.edu."]
}
