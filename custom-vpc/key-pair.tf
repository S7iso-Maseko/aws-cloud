resource "aws_key_pair" "key_pair" {
  key_name = "terra-test"
    public_key = file("C:\\Users\\Lenovo\\.ssh\\id_rsa.pub")

    tags = {
      Name = "nqs-key-pair"
    }
}