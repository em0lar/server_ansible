$ORIGIN hicologne.com.
@ 3600 IN SOA ns.hicologne.com. noc.hicologne.com. (
    2020041923 ; serial ;;; UPDATE THIS AFTER EACH EDIT!
    1800       ; refresh (30 min)
    1800       ; retry (30 min)
    86400      ; expire (1 day)
    3600       ; minimum (1 hour)
    )

@ 3600 IN NS hydrogen.ns.hetzner.com.
@ 3600 IN NS oxygen.ns.hetzner.com.
@ 3600 IN NS helium.ns.hetzner.de.
;;@ 3600 IN NS ns

ns IN A {{ ansible_default_ipv4.address }}
ns IN AAAA {{ ansible_default_ipv6.address }}

;; MAIL
;;;; MX
@ 3600 IN MX 1 cetus.het.hel.fi.labcode.de.

;;;; SRV
_autodiscover._tcp 3600 IN SRV 1 10 443 cetus.het.hel.fi.labcode.de.

;;;; SPF
@ 3600 IN TXT "v=spf1 a mx ~all"

;;;; DKIM
dkim._domainkey 3600 IN TXT "v=DKIM1;k=rsa;t=s;s=email;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA9hDJdt4ZbHDreDkEvd88zQydYYeQo+QtaUtLaINCv62rGHj6sspjOiaCYqy0hXfA1S9UwOb0ca94Jp2wRkO+i3DxHKHzrl+vr8/XjU7oNv/91hpzhNHxXPXmVQn4CKZe0M84GxupfEgGoy2jo3WFI4bjciK1NNs0RZ/CBz/i0DERa0SbLFDqIne1QlQ45w7tmfZHEfn7C/44CnMHSBWfy+kF7gard0hMSdtguYulGchLSTvfTyG/1TAF1dfNgLKudUOFgci8NnUhFO3cVIahBr+3XL1riDKZFDb2VUpI1dkHdPW7dYJFtXKce3OvtUjSjUHD07VpmCFIzLcmH+GVIwIDAQAB"

;;;; CNAME
autoconfig 3600 IN CNAME cetus.het.hel.fi.labcode.de.
autodiscover 3600 IN CNAME cetus.het.hel.fi.labcode.de.
mail 3600 IN CNAME cetus.het.hel.fi.labcode.de.

;; CAA
*	3600	IN	CAA	0 issue "letsencrypt.org"
@	3600	IN	CAA	0 issue "letsencrypt.org"

;; Pages
@ 3600 IN CNAME dione.int.sgb.de.labcode.de.
www 3600 IN CNAME dione.int.sgb.de.labcode.de.