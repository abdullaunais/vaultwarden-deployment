#### To generate the required SSL certificate and keys in PEM format, you can use the following OpenSSL commands:  
1. Generate a private key:  
```bash
openssl genpkey -algorithm RSA -out private.key.pem
```

2. Generate a Certificate Signing Request (CSR):  
```bash
openssl req -new -key private.key.pem -out request.csr.pem
```

3. Generate a self-signed certificate:
```bash
openssl req -x509 -key private.key.pem -in request.csr.pem -out fullchain.pem -days 365
```