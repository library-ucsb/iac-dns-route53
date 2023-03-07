locals {
  alex-zone_id = aws_route53_zone.r53_zones["alexandria-ucsb-edu"].zone_id
}

resource "aws_route53_record" "www-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "www.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "ucftp-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "ucftp.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ftpd-352.library.ucsb.edu."]
}

resource "aws_route53_record" "piru-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "piru.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "legacy-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "legacy.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "300"
  records = ["d1xax2soipw9h8.cloudfront.net."]
}

resource "aws_route53_record" "legacy-alexandria-ucsb-edu-cloudfront-CNAME" {
  zone_id = local.alex-zone_id
  name    = "_f5146d47cecdfaa13d510c8d8b0e8bf5.legacy.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["_633c924c0d54b711422966e745e0f692.kdbplsmznr.acm-validations.aws."]
}

resource "aws_route53_record" "collections-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "collections.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["collections-2.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "collections-2-alexandria-ucsb-edu-A" {
  zone_id = local.alex-zone_id
  name    = "collections-2.alexandria.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.128"]
}

resource "aws_route53_record" "alexandria-ucsb-edu-MX" {
  zone_id = local.alex-zone_id
  name    = "alexandria.ucsb.edu."
  type    = "MX"
  ttl     = "60"
  records = ["1 aspmx.l.google.com.", "5 alt1.aspmx.l.google.com.", "5 alt2.aspmx.l.google.com.", "10 aspmx2.googlemail.com.", "10 aspmx3.googlemail.com."]
}

resource "aws_route53_record" "alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu"]
}

#  All *.legacy.library.ucsb.edu requests
resource "aws_route53_record" "wildcard-legacy-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "*.legacy.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}
