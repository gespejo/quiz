mkdir cert
cd cert
openssl genrsa -out quiz-gespejo-key.pem 2048
openssl req -new -sha256 -key quiz-gespejo-key.pem -out quiz-gespejo-csr.pem
openssl x509 -req -in quiz-gespejo-csr.pem -signkey quiz-gespejo-key.pem -out quiz-gespejo-cert.pem
