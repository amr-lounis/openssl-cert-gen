@echo off
bin\openssl genpkey -algorithm RSA -out cert.key -pkeyopt rsa_keygen_bits:2048
bin\openssl req -new -key cert.key -out cert.csr -config _sub.openssl.conf
bin\openssl x509 -req -in cert.csr -CA root_file.crt -CAkey root_file.key -CAcreateserial -out cert.crt -days 365 -sha256 -extfile _sub.openssl.conf -extensions v3_req
pause