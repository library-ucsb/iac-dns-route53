locals {
  rev87-zone_id = aws_route53_zone.r53_zones["reverse-87-111-128-in-addr-arpa"].zone_id
}

resource "aws_route53_record" "_95-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "95.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["winshares.library.ucsb.edu."]
}

resource "aws_route53_record" "_94-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "94.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["proxy2-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_9-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "9.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ulpia.library.ucsb.edu."]
}

resource "aws_route53_record" "_80-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "80.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ucsb-lib-openvpn-001-v352.library.ucsb.edu."]
}

resource "aws_route53_record" "_8-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "8.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ebla.library.ucsb.edu."]
}

resource "aws_route53_record" "_71-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "71.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["openvpn2019.library.ucsb.edu."]
}

resource "aws_route53_record" "_60-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "60.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["libwsus.library.ucsb.edu."]
}

resource "aws_route53_record" "_59-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "59.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["dc-prod.library.ucsb.edu."]
}

resource "aws_route53_record" "_58-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "58.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["dc-stag.library.ucsb.edu."]
}

resource "aws_route53_record" "_54-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "54.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["proxy1-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_50-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "50.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["rssh-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_48-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "48.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["splunk-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_46-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "46.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["kms.library.ucsb.edu."]
}

resource "aws_route53_record" "_44-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "44.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ns2.library.ucsb.edu."]
}

resource "aws_route53_record" "_42-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "42.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["bastion-ucsb-lib-1.library.ucsb.edu."]
}

resource "aws_route53_record" "_41-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "41.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["sshgw-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_38-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "38.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["logs1-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_34-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "34.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["proxy-lib.library.ucsb.edu."]
}

resource "aws_route53_record" "_33-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "33.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["proxy-v.library.ucsb.edu."]
}

resource "aws_route53_record" "_30-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "30.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ns1.library.ucsb.edu."]
}

resource "aws_route53_record" "_27-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "27.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["atempo.library.ucsb.edu."]
}

resource "aws_route53_record" "_250-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "250.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["haproxy2.library.ucsb.edu."]
}

resource "aws_route53_record" "_249-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "249.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["haproxy1.library.ucsb.edu."]
}

resource "aws_route53_record" "_248-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "248.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["aws-datasync-agent-1-v352.library.ucsb.edu.", "haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "_247-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "247.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ucsb-lib-lm-collector-1-v352.library.ucsb.edu."]
}

resource "aws_route53_record" "_245-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "245.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["aresdev.library.ucsb.edu."]
}

resource "aws_route53_record" "_24-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "24.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ftpd-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_238-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "238.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["chronopolis-dev-001.library.ucsb.edu."]
}

resource "aws_route53_record" "_23-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "23.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["stash-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_228-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "228.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["proton-os.library.ucsb.edu."]
}

resource "aws_route53_record" "_224-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "224.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["arcgis1.library.ucsb.edu."]
}

resource "aws_route53_record" "_211-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "211.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["fridgemonitor.library.ucsb.edu."]
}

resource "aws_route53_record" "_206-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "206.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["epm-dev1.library.ucsb.edu."]
}

resource "aws_route53_record" "_203-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "203.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["rdpgwbackup.library.ucsb.edu."]
}

resource "aws_route53_record" "_20-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "20.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["nginxlb.library.ucsb.edu."]
}

resource "aws_route53_record" "_199-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "199.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["gateway.library.ucsb.edu."]
}

resource "aws_route53_record" "_198-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "198.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["vpn-gw-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_197-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "197.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["lb-02.library.ucsb.edu."]
}

resource "aws_route53_record" "_196-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "196.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["lb-01.library.ucsb.edu."]
}

resource "aws_route53_record" "_195-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "195.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["docker-vmware-004.library.ucsb.edu."]
}

resource "aws_route53_record" "_194-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "194.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["docker-vmware-003.library.ucsb.edu."]
}

resource "aws_route53_record" "_193-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "193.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["docker-vmware-002.library.ucsb.edu."]
}

resource "aws_route53_record" "_192-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "192.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["docker-vmware-001.library.ucsb.edu."]
}

resource "aws_route53_record" "_191-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "191.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["jump-ops-02.library.ucsb.edu."]
}

resource "aws_route53_record" "_190-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "190.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["jump-ops-01.library.ucsb.edu."]
}

resource "aws_route53_record" "_19-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "19.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["stream2x.library.ucsb.edu."]
}

resource "aws_route53_record" "_183-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "183.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["pcut-test.library.ucsb.edu."]
}

resource "aws_route53_record" "_182-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "182.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["libr-gauchoprt.library.ucsb.edu."]
}

resource "aws_route53_record" "_178-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "178.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["epm2.library.ucsb.edu."]
}

resource "aws_route53_record" "_177-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "177.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["epm1.library.ucsb.edu."]
}

resource "aws_route53_record" "_172-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "172.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["libcat.library.ucsb.edu."]
}

resource "aws_route53_record" "_171-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "171.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["libcat-dev.library.ucsb.edu."]
}

resource "aws_route53_record" "_17-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "17.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["adrl-demo.library.ucsb.edu."]
}

resource "aws_route53_record" "_168-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "168.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["filemaker-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "_167-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "167.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["github.library.ucsb.edu."]
}

resource "aws_route53_record" "_159-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "159.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["geoblacklight.library.ucsb.edu."]
}

resource "aws_route53_record" "_158-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "158.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["coll01b.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_156-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "156.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["mw02.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_155-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "155.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["mw01.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_152-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "152.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["coll02-old.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_151-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "151.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["geoworks-sandbox.library.ucsb.edu."]
}

resource "aws_route53_record" "_150-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "150.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["geoservices-sandbox.library.ucsb.edu."]
}

resource "aws_route53_record" "_149-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "149.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["coll02z1.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_148-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "148.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["coll01z2.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_147-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "147.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["iiif-sandbox.library.ucsb.edu."]
}

resource "aws_route53_record" "_145-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "145.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["coll02z3.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_14-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "14.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["haproxyt2.library.ucsb.edu."]
}

resource "aws_route53_record" "_133-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "133.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["netapp1b.library.ucsb.edu."]
}

resource "aws_route53_record" "_132-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "132.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["netapp1a.library.ucsb.edu."]
}

resource "aws_route53_record" "_13-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "13.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["haproxyt1.library.ucsb.edu."]
}

resource "aws_route53_record" "_128-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "128.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["collections-2.alexandria.ucsb.edu."]
}

resource "aws_route53_record" "_124-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "124.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["sendmail-relay-352.library.ucsb.edu."]
}

resource "aws_route53_record" "_123-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "123.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["casper2.library.ucsb.edu."]
}

resource "aws_route53_record" "_119-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "119.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["dc3.library.ucsb.edu."]
}

resource "aws_route53_record" "_118-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "118.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["dc5.library.ucsb.edu."]
}

resource "aws_route53_record" "_117-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "117.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["dc4.library.ucsb.edu."]
}

resource "aws_route53_record" "_115-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "115.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["ares.library.ucsb.edu."]
}

resource "aws_route53_record" "_107-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "107.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["adrl-sandbox.library.ucsb.edu."]
}

resource "aws_route53_record" "_103-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "103.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["staffprintdev1.library.ucsb.edu."]
}

resource "aws_route53_record" "_102-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "102.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["staffprint1.library.ucsb.edu."]
}

resource "aws_route53_record" "_10-87-111-128-in-addr-arpa-PTR" {
  zone_id = local.rev87-zone_id
  name    = "10.87.111.128.in-addr.arpa."
  type    = "PTR"
  ttl     = "10800"
  records = ["nuzi.library.ucsb.edu."]
}
