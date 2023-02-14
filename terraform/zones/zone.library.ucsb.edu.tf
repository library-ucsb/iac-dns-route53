locals {
  library-zone_id = aws_route53_zone.r53_zones["library-ucsb-edu"].zone_id
}

data "aws_elb" "dld-eks-ingress-nginx-v1" {
  name = "a8058ed75a0774def8ba0fb05a90144d"
}

resource "aws_route53_record" "www-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "www.library.ucsb.edu."
  type    = "A"
  ttl     = "60"
  records = ["23.185.0.4"]
}

resource "aws_route53_record" "winshares-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "winshares.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.95"]
}

resource "aws_route53_record" "wiki-aws-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "wiki-aws.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["atlas-loadb-bxukailn7wf4-118553238.us-west-2.elb.amazonaws.com."]
}

resource "aws_route53_record" "we-remember-them-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "we-remember-them.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "we-remember-them-test-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "we-remember-them-test.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "20"
  records = ["dfxvhm9lq0zwe.cloudfront.net."]
}

resource "aws_route53_record" "vpn-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "vpn.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb-lib-openvpn-001-v352.library.ucsb.edu."]
}

resource "aws_route53_record" "vpn-admin-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "vpn-admin.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb-lib-openvpn-001-v352.library.ucsb.edu."]
}

resource "aws_route53_record" "victorledgers-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "victorledgers.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "victor-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "victor.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "ucsbreads-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "ucsbreads.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "ucsbjenkins-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "ucsbjenkins.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "ucsb-lib-openvpn-001-v352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ucsb-lib-openvpn-001-v352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.80"]
}

resource "aws_route53_record" "ucsb-lib-lm-collector-1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ucsb-lib-lm-collector-1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.247"]
}

resource "aws_route53_record" "truesoundstage-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "truesoundstage.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "truesound-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "truesound.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "tl-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "tl.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["23.185.0.4"]
}

resource "aws_route53_record" "thoreau-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "thoreau.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "thoreau-remote-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "thoreau-remote.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["rssh-352.library.ucsb.edu."]
}

resource "aws_route53_record" "svmwindows-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "svmwindows.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.132", "128.111.87.133"]
}

resource "aws_route53_record" "stream2x-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "stream2x.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.19"]
}

resource "aws_route53_record" "stream-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "stream.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["stream2x.library.ucsb.edu."]
}

resource "aws_route53_record" "status-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "status.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["wdc4kd3zsrn9.stspg-customer.com."]
}

resource "aws_route53_record" "starlight-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "starlight.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "sshgw-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "sshgw.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["sshgw-352.library.ucsb.edu."]
}

resource "aws_route53_record" "sshgw-352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "sshgw-352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.41"]
}

resource "aws_route53_record" "ssh-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "ssh.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["sshgw-352.library.ucsb.edu."]
}

resource "aws_route53_record" "splunk-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "splunk.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["splunk-352.library.ucsb.edu."]
}

resource "aws_route53_record" "splunk-352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "splunk-352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.48"]
}

resource "aws_route53_record" "sendmail-relay-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "sendmail-relay.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["sendmail-relay-352.library.ucsb.edu."]
}

resource "aws_route53_record" "sendmail-relay-352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "sendmail-relay-352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.124"]
}

resource "aws_route53_record" "search-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "search.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb.primo.exlibrisgroup.com."]
}

resource "aws_route53_record" "rundeck2018-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "rundeck2018.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "rundeck-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "rundeck.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "rssh-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "rssh.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["rssh-352.library.ucsb.edu."]
}

resource "aws_route53_record" "rssh-352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "rssh-352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.50"]
}

resource "aws_route53_record" "reset-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "reset.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "researchspecial-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "researchspecial.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb.aeon.atlas-sys.com."]
}

resource "aws_route53_record" "rdpgwbackup-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "rdpgwbackup.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.203"]
}

resource "aws_route53_record" "rancher-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "rancher.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["nginxlb.library.ucsb.edu."]
}

resource "aws_route53_record" "proxy-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "proxy.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.121.42"]
}

resource "aws_route53_record" "pcut-test-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "pcut-test.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.183"]
}

resource "aws_route53_record" "ns2-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ns2.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.44"]
}

resource "aws_route53_record" "ns1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ns1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.30"]
}

resource "aws_route53_record" "nico-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "nico.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "nico-server-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "nico-server.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "nginxlb-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "nginxlb.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.20"]
}

resource "aws_route53_record" "mqwixxwyyoyl-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "mqwixxwyyoyl.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["gv-nhwzlibmfjg6jh.dv.googlehosted.com."]
}

resource "aws_route53_record" "mn7ygtznogdgjohvc27asq35xqp5dxhc-_domainkey-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "mn7ygtznogdgjohvc27asq35xqp5dxhc._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["mn7ygtznogdgjohvc27asq35xqp5dxhc.dkim.amazonses.com."]
}

resource "aws_route53_record" "misc-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "misc.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "mil-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "mil.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "mil-db-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "mil-db.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy1.library.ucsb.edu."]
}

resource "aws_route53_record" "merritt-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "merritt.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "maxqda-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "maxqda.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["license-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "managefilemaker-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "managefilemaker.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.97.222"]
}

resource "aws_route53_record" "logserver-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "logserver.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["splunk-352.library.ucsb.edu."]
}

resource "aws_route53_record" "logs-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "logs.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["splunk-352.library.ucsb.edu."]
}

resource "aws_route53_record" "loberostage-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "loberostage.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "lobero-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "lobero.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "license-2019-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "license-2019.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.237"]
}

resource "aws_route53_record" "libwsus-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "libwsus.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.60"]
}

resource "aws_route53_record" "library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "library.ucsb.edu."
  type    = "TXT"
  ttl     = "10800"
  records = ["v=spf1 a mx include:_spf.ucsb.edu include:spf-na.exlibrisgroup.com ~all", "atlassian-domain-verification=ZIaUbbkrYS6DgSxHx1eKL1A57BO3OaXGLHygBLZ6xui3OkJM81ApVKLKDlU3EySM", "MS=D7F719CF8E6A69269B750C38B2D2718450464065", "apple-domain-verification=pNUAObZKnm3Mbhau"]
}

resource "aws_route53_record" "library-ucsb-edu-MX" {
zone_id = local.library-zone_id
  name    = "library.ucsb.edu."
  type    = "MX"
  ttl     = "60"
  records = ["1 aspmx.l.google.com.", "5 alt1.aspmx.l.google.com.", "5 alt2.aspmx.l.google.com.", "10 aspmx2.googlemail.com.", "10 aspmx3.googlemail.com."]
}

resource "aws_route53_record" "library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["23.185.0.4"]
}

resource "aws_route53_record" "libr-gauchoprt-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "libr-gauchoprt.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.182"]
}

resource "aws_route53_record" "libcal-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "libcal.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["v2.libcal.com."]
}

resource "aws_route53_record" "lb-haproxy-legacy-001-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "lb-haproxy-legacy-001.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.17"]
}

resource "aws_route53_record" "lauc-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "lauc.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["live-lauc-library-ucsb-edu-v01.pantheonsite.io."]
}

resource "aws_route53_record" "l3vffdmeidbrtg2rgh5ralxr4yxtpfkz-_domainkey-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "l3vffdmeidbrtg2rgh5ralxr4yxtpfkz._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["l3vffdmeidbrtg2rgh5ralxr4yxtpfkz.dkim.amazonses.com."]
}

resource "aws_route53_record" "kms-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "kms.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.46"]
}

resource "aws_route53_record" "jump-ops-02-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "jump-ops-02.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.191"]
}

resource "aws_route53_record" "jump-ops-01-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "jump-ops-01.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.190"]
}

resource "aws_route53_record" "jenkinswww-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "jenkinswww.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "jenkinsucsb-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "jenkinsucsb.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "jenkins-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "jenkins.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "iiif-sandbox-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "iiif-sandbox.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.147"]
}

resource "aws_route53_record" "help-aws-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "help-aws.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["atlas-loadb-vei1ihcqpmza-1116913365.us-west-2.elb.amazonaws.com."]
}

resource "aws_route53_record" "haproxyt2-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxyt2.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.14"]
}

resource "aws_route53_record" "haproxyt1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxyt1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.13"]
}

resource "aws_route53_record" "haproxyt-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxyt.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.12"]
}

resource "aws_route53_record" "haproxy2-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxy2.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.250"]
}

resource "aws_route53_record" "haproxy1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxy1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.249"]
}

resource "aws_route53_record" "haproxy-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "haproxy.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.248"]
}

resource "aws_route53_record" "guides-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "guides.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["v2.libguides.com."]
}

resource "aws_route53_record" "google-_domainkey-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "google._domainkey.library.ucsb.edu."
  type    = "TXT"
  ttl     = "10800"
  records = ["v=DKIM1; k=rsa; p=\"\"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk52UK/XujEZXtTTscJMo7PugBln05JlNEG\"\"LnAk6KQURdOcfnevPiSxi7yszeP/gZE7KhwfhSctPAtQIumIaD8rl4yVd8ySp3ovdR/P2U5TrBx+oj/\"\"ecTvG+wQFTRMRmnrdiAoaAhDinXJb++ytvape6hmip9FGsYEwR9aYtfQ5zFLGbelhv4BmXNVdgOr7JD3\"\"6WKg7/7Z02Yr1u7E2d2INTw6LAKb3Gx/3De2z6FxoK+CITpcbXoeZDfTSI1+LOiWp7P7N2K66kTVUCu/\"\"4WCnEIACHIfnJ786wDL9XUjy6zY1xkUoxL03lCljuJlGPAHxEwxWYdPzlOUsyjbe5IIdQIDAQAB"]
}

resource "aws_route53_record" "geoworks-sandbox-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "geoworks-sandbox.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.151"]
}

resource "aws_route53_record" "geoservices-sandbox-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "geoservices-sandbox.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.150"]
}

resource "aws_route53_record" "geoblacklight-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "geoblacklight.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.159"]
}

resource "aws_route53_record" "gateway-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "gateway.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.199"]
}

resource "aws_route53_record" "ftpd-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "ftpd.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ftpd-352.library.ucsb.edu."]
}

resource "aws_route53_record" "ftpd-352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ftpd-352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.24"]
}

resource "aws_route53_record" "ftp-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "ftp.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ftpd-352.library.ucsb.edu."]
}

resource "aws_route53_record" "fridgemonitor-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "fridgemonitor.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.211"]
}

resource "aws_route53_record" "filemaker-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "filemaker.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["filemaker-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "filemaker-2019-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "filemaker-2019.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.168"]
}

resource "aws_route53_record" "esri-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "esri.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["license-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "mathematica-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "mathematica.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["license-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "eset-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "eset.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "epm2-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "epm2.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.178"]
}

resource "aws_route53_record" "epm1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "epm1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.177"]
}

resource "aws_route53_record" "epm-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "epm.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "epm-dev1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "epm-dev1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.206"]
}

resource "aws_route53_record" "epm-dev-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "epm-dev.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["epm-dev1.library.ucsb.edu."]
}

resource "aws_route53_record" "dc5-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc5.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.118"]
}

resource "aws_route53_record" "dc4-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc4.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.117"]
}

resource "aws_route53_record" "dc3-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc3.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.119"]
}

resource "aws_route53_record" "dc-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.117", "128.111.87.118", "128.111.87.119"]
}

resource "aws_route53_record" "dc-stag-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc-stag.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.58"]
}

resource "aws_route53_record" "dc-prod-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dc-prod.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.59"]
}

resource "aws_route53_record" "db-mil-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "db-mil.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy1.library.ucsb.edu."]
}

resource "aws_route53_record" "d42-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "d42.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ec2-54-213-10-104.us-west-2.compute.amazonaws.com."]
}

resource "aws_route53_record" "classes-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "classes.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "cemaweb-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "cemaweb.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "building-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "building.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["lb-haproxy-legacy-001.library.ucsb.edu."]
}

resource "aws_route53_record" "blackfeminism-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "blackfeminism.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-blackfeminism-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.blackfeminism.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "cylinders-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "cylinders.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-cylinders-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.cylinders.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "digital-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "digital.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-digital-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.digital.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "geodata-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "geodata.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-geodata-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.geodata.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spotlight-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "spotlight.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-spotlight-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.spotlight.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spotlight-stage-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "spotlight-stage.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-spotlight-stage-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.spotlight-stage.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_elb.dld-eks-ingress-nginx-v1.dns_name
    zone_id                = data.aws_elb.dld-eks-ingress-nginx-v1.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "dhcp-servers-1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dhcp-servers-1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.42"]
}

resource "aws_route53_record" "aws-datasync-agent-1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "aws-datasync-agent-1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.246"]
}

resource "aws_route53_record" "atempo-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "atempo.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.27"]
}

resource "aws_route53_record" "assets-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "assets.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.192"]
}

resource "aws_route53_record" "arscstage-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "arscstage.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "arsc-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "arsc.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["filemaker-2019.library.ucsb.edu."]
}

resource "aws_route53_record" "aresdev-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "aresdev.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.245"]
}

resource "aws_route53_record" "ares-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ares.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.115"]
}

resource "aws_route53_record" "arcstage-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "arcstage.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "arc-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "arc.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "alma-sftp-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "alma-sftp.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["rssh-352.library.ucsb.edu."]
}

resource "aws_route53_record" "adrl-sandbox-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "adrl-sandbox.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.107"]
}

resource "aws_route53_record" "adpprod2-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adpprod2.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "adpprod1-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adpprod1.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "adpdevdb-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adpdevdb.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxyt.library.ucsb.edu."]
}

resource "aws_route53_record" "adpdev-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adpdev.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "adp-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adp.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "_acme-challenge-www-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "_acme-challenge.www.library.ucsb.edu."
  type    = "TXT"
  ttl     = "360"
  records = ["5AswUkgsiZQr6dhsB2f4hHUsZYPMVsneOmmdD1hc-RE"]
}

resource "aws_route53_record" "_acme-challenge-tl-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "_acme-challenge.tl.library.ucsb.edu."
  type    = "TXT"
  ttl     = "360"
  records = ["eg1o9eEZA8IFT7iugTxiL_VI92DZ_ndm3gx-PiXOeGI"]
}

resource "aws_route53_record" "_acme-challenge-iiif-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "_acme-challenge.iiif.library.ucsb.edu."
  type    = "TXT"
  ttl     = "360"
  records = ["1mDeI36L-cmiJ4TCbAJpOZs8jaiaTIgoVQONa95R0_8"]
}

resource "aws_route53_record" "_acme-challenge-cantaloupe-1-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "_acme-challenge.cantaloupe-1.library.ucsb.edu."
  type    = "TXT"
  ttl     = "360"
  records = ["5WqZBNuHUS2c3P1xEtGVRuL_zBwYywWsdVF27tJfc4w"]
}

resource "aws_route53_record" "_1a4ae0fdc09a2579501cceb77eff2835-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "_1a4ae0fdc09a2579501cceb77eff2835.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["_cecf8d1aea6148c752cdaeb6d9e6e16a.acm-validations.aws."]
}

resource "aws_route53_record" "_3ettaxfr6s43fvjdkithnbm5wpmcvtkb-_domainkey-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "3ettaxfr6s43fvjdkithnbm5wpmcvtkb._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["3ettaxfr6s43fvjdkithnbm5wpmcvtkb.dkim.amazonses.com."]
}

resource "aws_route53_record" "wildcard-victor-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "*.victor.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "wildcard-proxytmp-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.proxytmp.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.159"]
}

resource "aws_route53_record" "wildcard-proxy-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.proxy.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.121.42"]
}

resource "aws_route53_record" "delegation-ops-library-ucsb-edu-NS" {
  zone_id = local.library-zone_id
  name    = "ops.library.ucsb.edu"
  type    = "NS"
  ttl     = "10800"
  records = [
    "ns-970.awsdns-57.net",
    "ns-1842.awsdns-38.co.uk",
    "ns-68.awsdns-08.com",
    "ns-1357.awsdns-41.org"
  ]
}

resource "aws_route53_record" "delegation-dld-library-ucsb-edu-NS" {
  zone_id = local.library-zone_id
  name    = "dld.library.ucsb.edu"
  type    = "NS"
  ttl     = "10800"
  records = [
    "ns-1447.awsdns-52.org",
    "ns-290.awsdns-36.com",
    "ns-1923.awsdns-48.co.uk",
    "ns-739.awsdns-28.net"
  ]
}
