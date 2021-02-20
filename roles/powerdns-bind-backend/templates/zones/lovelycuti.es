$ORIGIN lovelycuti.es
@ 3600 IN SOA ns.em0lar.dev. noc.em0lar.dev. (
    2021021501 ; serial ;;; UPDATE THIS AFTER EACH EDIT!
    3600       ; refresh (1 hour)
    1800       ; retry (30 min)
    604800     ; expire (168 day)
    3600       ; minimum (1 hour)
    )

@ 3600 IN NS ns1.n0emis.eu.
@ 3600 IN NS ns2.n0emis.eu.
@ 3600 IN NS ns3.n0emis.eu.
@ 3600 IN NS ns.em0lar.dev

;; MAIL
;;;; MX
@ 3600 IN MX 1 cetus.het.hel.fi.em0lar.dev.

@ 3600 IN MX 10 backupmx.dont-break.it.

;;;; DKIM
dkim._domainkey 3600 IN TXT "v=DKIM1;k=rsa;t=s;s=email;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7tBTDV2m8+2fG6lKNzNni3iXSrn2J+u+a7JkYULEoHHTXz66G1EEOXE8sDvwChEQMqZV6LXMPfLrhubHGnaEHq8a+qmXQ1Xylz252TAyh4XFr1sNH2WTxw/nUZjL7Rlmbmba0bqZwi6rMwd5QRagcsi7UfqPwj5mEsrPXOBDNbQ5l5S+IJ+Wj7M0BAOhON092uBNVseXvuaYNIJU2ndmLqmcqHIfsVrfp8yaSBPMilAVT1RciGBgw0T1wy/BU/89AAq/kIIGycNoTR+ZvdU/2K54BFgbzuVgqg0DWINmfJsSblLYfymdsvNsUrETzmR4SH1fVMbCiH9UoT+wUPAU7wIDAQAB"

;;;; SPF
infra 3600 IN TXT "v=spf1 a mx ~all"
@ 3600 IN TXT "v=spf1 a mx ~all"

;; Pages/Services
@ 300 IN ALIAS titan.int.sig.de.em0lar.dev.
www 3600 IN ALIAS titan.int.sig.de.em0lar.dev.
