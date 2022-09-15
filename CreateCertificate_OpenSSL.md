# create self signed certificate and private key

1. Generation of RSA Private Key
		openssl genrsa -out softcom.key 2048

2. Certificate Signing Request (CSR)
		openssl req -new -key softcom.key -out softcom.csr
		
3. X.509 Certificate Data and add vailidity
		openssl x509 -req -days 1000 -in softcom.csr -signkey softcom.key -out softcom.crt
		
		
# in single line DER format
		openssl req -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform DER -keyout "softcom_key.der" -out "softcom_crt.der"
		
# in single line PEM format
		openssl req -new -x509 -newkey rsa:2048 -nodes -days 36500 -outform PEM -keyout "softcom_key.pem" -out "softcom_crt.pem"
