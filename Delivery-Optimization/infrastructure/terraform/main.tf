# 1. Create a key pair (use your own key file for SSH)
resource "aws_key_pair" "this" {
  key_name   = "${var.project_name}-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# 2. Security group for SSH + HTTP
resource "aws_security_group" "this" {
  name        = "${var.project_name}-sg"
  description = "Allow SSH and HTTP"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 3. Launch EC2 instance
resource "aws_instance" "this" {
  ami           = "ami-08c40ec9ead489470" # Ubuntu 22.04 in us-east-1
  instance_type = var.instance_type
  key_name      = aws_key_pair.this.key_name
  security_groups = [aws_security_group.this.name]

  tags = {
    Name = var.project_name
  }
}
