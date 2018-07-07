# SSH key pair
#resource "aws_key_pair" "default" {
#  key_name   = "vpctestkeypair"
#  public_key = "${file("${var.key_path}")}"
#}

# WAP
resource "aws_instance" "wap" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  #key_name                    = "${aws_key_pair.default.id}"
  subnet_id                   = "${aws_subnet.public-subnet.id}"
  vpc_security_group_ids      = ["${aws_security_group.sgwap.id}"]
  associate_public_ip_address = true
  source_dest_check           = false

  tags {
    Name = "wap"
  }
}

# DC
resource "aws_instance" "dc" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  #key_name               = "${aws_key_pair.default.id}"
  subnet_id              = "${aws_subnet.private-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgdc.id}"]
  source_dest_check      = false

  tags {
    Name = "dc"
  }
}

# ADFS
resource "aws_instance" "adfs" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  #key_name               = "${aws_key_pair.default.id}"
  subnet_id              = "${aws_subnet.private-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgadfs.id}"]
  source_dest_check      = false

  tags {
    Name = "adfs"
  }
}

# WEB
resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  #key_name               = "${aws_key_pair.default.id}"
  subnet_id              = "${aws_subnet.private-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
  source_dest_check      = false

  tags {
    Name = "web"
  }
}
