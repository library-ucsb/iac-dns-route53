locals {
  alex-zone_id = aws_route53_zone.r53_zones["alexandria-ucsb-edu"].zone_id
}

resource "aws_route53_record" "www-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "www.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "30"
  records = ["haproxyt1.library.ucsb.edu."]
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
  records = ["haproxy.library.ucsb.edu."]
}

#  Legacy ADL through HA-HAproxy pair
resource "aws_route53_record" "legacy-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "legacy.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
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

resource "aws_route53_record" "alexandria-ucsb-edu-A" {
  zone_id = local.alex-zone_id
  name    = "alexandria.ucsb.edu."
  type    = "A"
  ttl     = "30"
  records = ["128.111.87.13"]
}

#  All *.legacy.library.ucsb.edu requests
resource "aws_route53_record" "wildcard-legacy-alexandria-ucsb-edu-CNAME" {
  zone_id = local.alex-zone_id
  name    = "*.legacy.alexandria.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}
