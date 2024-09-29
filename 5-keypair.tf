resource "tls_private_key" "test-key" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "aws_key_pair" "test-key" {
  key_name = "test-key"
  public_key = tls_private_key.test-key.public_key_openssh
  
  provisioner "local-exec" {
    command = " echo '${tls_private_key.test-key.private_key_pem}' > key-pair.pem && chmod 400 key-pair.pem"
  }
}