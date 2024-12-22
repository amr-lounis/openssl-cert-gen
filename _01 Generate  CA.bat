@echo off
bin\openssl genpkey -algorithm RSA -out root_file.key -pkeyopt rsa_keygen_bits:2048
bin\openssl req -x509 -new -nodes -key root_file.key -sha256 -days 3650 -out root_file.crt -config _root.openssl.conf -extensions v3_req
pause