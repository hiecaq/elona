(use-modules (guix)
             ((guix licenses) #:prefix license:)
             (gnu packages)
             (gnu packages base))


(define-public elona-locales
  (make-glibc-utf8-locales
   glibc
   #:locales (list "en_US" "ja_JP" "zh_CN")
   #:name "elona-locales"))

(concatenate-manifests
 (list
  (packages->manifest (list elona-locales))
  (specifications->manifest
   '("openssl"
     "nss-certs"
     "coreutils"
     "wine64-staging"
     "grep"))))
