$ORIGIN bechilli.com.
@ 3600 IN SOA ns.bechilli.com. noc.bechilli.com. (
    2020052623 ; serial ;;; UPDATE THIS AFTER EACH EDIT!
    1800       ; refresh (30 min)
    1800       ; retry (30 min)
    86400      ; expire (1 day)
    3600       ; minimum (1 hour)
    )

@ 3600 IN NS hydrogen.ns.hetzner.com.
@ 3600 IN NS oxygen.ns.hetzner.com.
@ 3600 IN NS helium.ns.hetzner.de.

;; Pages
@ 3600 IN CNAME dione.int.sig.de.labcode.de.
www 3600 IN CNAME dione.int.sig.de.labcode.de.