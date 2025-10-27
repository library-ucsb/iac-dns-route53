locals {
  library-zone_id = aws_route53_zone.r53_zones["library-ucsb-edu"].zone_id
}

data "aws_lb" "dld-eks-ingress-nginx-v3" {
  name = "af2378661de65473db37351e4d033ece"
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

resource "aws_route53_record" "library-wildcard-ssl-renewal-automation" {
zone_id = local.library-zone_id
  name    = "_1a4ae0fdc09a2579501cceb77eff2835.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "300"
  records = ["_cecf8d1aea6148c752cdaeb6d9e6e16a.acm-validations.aws."]
}

resource "aws_route53_record" "_acme-challenge-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "_acme-challenge.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "300"
  records = ["_acme-challenge.acmevalidation.ets.ucsb.edu."]
}

resource "aws_route53_record" "we-remember-them-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "we-remember-them.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["dfxvhm9lq0zwe.cloudfront.net."]
}

resource "aws_route53_record" "we-remember-them-ssl-renewal-automation" {
zone_id = local.library-zone_id
  name    = "_15a93d1bd59ecfa0a90c875c62475494.we-remember-them.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "300"
  records = ["_7933f0008a7edafc56a5ad719968f404.kdbplsmznr.acm-validations.aws."]
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
  records = ["d39iun9d2ez3mk.cloudfront.net."]
}

resource "aws_route53_record" "libfsx1-1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "libfsx1-1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["10.226.41.173"]
}

resource "aws_route53_record" "datadog-library-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "datadog-library.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.123.36"]
}

resource "aws_route53_record" "datadog-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "datadog.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["datadog-library.library.ucsb.edu."]
}

resource "aws_route53_record" "carpentry-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "carpentry.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsbcarpentry.github.io."]
}

resource "aws_route53_record" "ucsb-lib-openvpn-001-v352-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ucsb-lib-openvpn-001-v352.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.80"]
}

resource "aws_route53_record" "truesound-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "truesound.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-truesound-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.truesound.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
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
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "svmwindows-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "svmwindows.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.132", "128.111.87.133"]
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

resource "aws_route53_record" "staffprint1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "staffprint1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.102"]
}

resource "aws_route53_record" "staffprintdev1-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "staffprintdev1.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.103"]
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

resource "aws_route53_record" "sendgrid-aeon-id-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "em7397.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["u5578462.wl213.sendgrid.net."]
}

resource "aws_route53_record" "sendgrid-aeon-dk-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "aeo._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["aeo.domainkey.u5578462.wl213.sendgrid.net."]
}

resource "aws_route53_record" "sendgrid-aeon-dk2-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "aeo2._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["aeo2.domainkey.u5578462.wl213.sendgrid.net."]
}

resource "aws_route53_record" "search-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "search.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb.primo.exlibrisgroup.com."]
}

resource "aws_route53_record" "reserves-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "reserves.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsb.ares.atlas-sys.com."]
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
  ttl     = "300"
  records = ["132.174.249.166"]
}

resource "aws_route53_record" "wildcard-proxy-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.proxy.library.ucsb.edu."
  type    = "A"
  ttl     = "300"
  records = ["132.174.249.166"]
}

resource "aws_route53_record" "ezp-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ezp.library.ucsb.edu."
  type    = "A"
  ttl     = "300"
  records = ["132.174.249.166"]
}

resource "aws_route53_record" "pcut-test-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "pcut-test.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.183"]
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
  records = ["dhksq0pztv94b.cloudfront.net."]
}

resource "aws_route53_record" "mil-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "mil.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "mil-staging-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "mil-staging.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
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

resource "aws_route53_record" "lobero-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "lobero.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-lobero-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.lobero.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "license-2019-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "license-2019.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.237"]
}

resource "aws_route53_record" "library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "library.ucsb.edu."
  type    = "TXT"
  ttl     = "10800"
  records = ["v=spf1 a mx include:_spf.ucsb.edu include:spf-na.exlibrisgroup.com ~all", "atlassian-domain-verification=ZIaUbbkrYS6DgSxHx1eKL1A57BO3OaXGLHygBLZ6xui3OkJM81ApVKLKDlU3EySM", "MS=D7F719CF8E6A69269B750C38B2D2718450464065", "apple-domain-verification=pNUAObZKnm3Mbhau", "f888256c-024a-4d8e-a34f-3c24ea4ed01d"]
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

resource "aws_route53_record" "lauc-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "lauc.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
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
  records = ["proxyserver.ets.ucsb.edu."]
}

resource "aws_route53_record" "emma1-domainkey-CNAME" {
zone_id = local.library-zone_id
  name    = "e2ma-k1._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "360"
  records = ["e2ma-k1.dkim.e2ma.net."]
}

resource "aws_route53_record" "emma2-domainkey-CNAME" {
zone_id = local.library-zone_id
  name    = "e2ma-k2._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "360"
  records = ["e2ma-k2.dkim.e2ma.net."]
}

resource "aws_route53_record" "emma3-domainkey-CNAME" {
zone_id = local.library-zone_id
  name    = "e2ma-k3._domainkey.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "360"
  records = ["e2ma-k3.dkim.e2ma.net."]
}

resource "aws_route53_record" "emma-verification-TXT" {
zone_id = local.library-zone_id
  name    = "@"
  type    = "TXT"
  ttl     = "360"
  records = ["e2ma-verification=pptgb"]
}

resource "aws_route53_record" "dfsRR-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "dfs.library.ucsb.edu."
  type    = "A"
  ttl     = "10800"
  records = ["128.111.87.117", "128.111.87.118", "128.111.87.119"]
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

resource "aws_route53_record" "d42-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "d42.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ec2-54-213-10-104.us-west-2.compute.amazonaws.com."]
}

resource "aws_route53_record" "blackfeminism-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "blackfeminism.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-blackfeminism-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.blackfeminism.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "cylinders-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "cylinders.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-cylinders-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.cylinders.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "constantcontact-_domainkey-library-ucsb-edu-TXT" {
zone_id = local.library-zone_id
  name    = "2020303040._domainkey.library.ucsb.edu."
  type    = "TXT"
  ttl     = "10800"
  records = ["k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCaaLHZl4YJyCBpWRrjGlx0Qw48A9cwHLnRtTL9yJU9s6clm4H592a4yHzMoosw4fqy7cmOpQCj9DqqXRW9MOsSF4UNiNS692Wl4WQulTQkAPB6+FBOXiXUhZV+RBzcFih+3uqv1dU0y5TXZ5Fu7aDv/JplWwquGO6ggGAqeON/TwIDAQAB"]
}

resource "aws_route53_record" "digital-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "digital.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-digital-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.digital.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "geodata-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "geodata.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-geodata-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.geodata.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spotlight-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "spotlight.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-spotlight-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.spotlight.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spotlight-stage-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "spotlight-stage.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-spotlight-stage-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.spotlight-stage.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
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

resource "aws_route53_record" "avcollections-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "avcollections.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["ucsblibrary.aviaryplatform.com."]
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

resource "aws_route53_record" "ares-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "ares.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["da7zp5jeci7wo.cloudfront.net."]
}

resource "aws_route53_record" "arc-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "arc.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-arc-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "*.arc.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
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

resource "aws_route53_record" "adpdev-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adpdev.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "10800"
  records = ["haproxy.library.ucsb.edu."]
}

resource "aws_route53_record" "adp-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "adp.library.ucsb.edu."
  type    = "A"
  alias {
    name                   = data.aws_lb.dld-eks-ingress-nginx-v3.dns_name
    zone_id                = data.aws_lb.dld-eks-ingress-nginx-v3.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "adp-waf-library-ucsb-edu-A" {
zone_id = local.library-zone_id
  name    = "adp-waf.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "60"
  records = ["dkb8m8gcmkklk.cloudfront.net."]
}

resource "aws_route53_record" "adp-assets-library-ucsb-edu-CNAME" {
zone_id = local.library-zone_id
  name    = "adp-assets.library.ucsb.edu."
  type    = "CNAME"
  ttl     = "360"
  records = ["d1h02xlhn2xtdb.cloudfront.net."]
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
