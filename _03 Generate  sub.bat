@echo off
bin\openssl genpkey -algorithm RSA -out sub_file.key -pkeyopt rsa_keygen_bits:2048
bin\openssl req -new -key sub_file.key -out sub_file.csr -config _sub.openssl.conf
bin\openssl x509 -req -in sub_file.csr -CA root_file.crt -CAkey root_file.key -CAcreateserial -out sub_file.crt -days 3650 -sha256 -extfile _sub.openssl.conf -extensions v3_req
pause