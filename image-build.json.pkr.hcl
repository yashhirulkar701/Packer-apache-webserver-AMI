
variable "aws_profile" {
  type    = string
  default = "yash"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "source_ami" {
  type    = string
  default = "ami-08df646e18b182346"
}

variable "ssh_username" {
  type    = string
  default = "ec2-user"
}
# The "legacy_isotime" function has been provided for backwards compatability, but we recommend switching to the timestamp and formatdate functions.

source "amazon-ebs" "autogenerated_1" {
  ami_name      = "packer-${legacy_isotime("Jan-_2-15_04_05.000")}"
  instance_type = "${var.instance_type}"
  profile       = "${var.aws_profile}"
  region        = "${var.region}"
  source_ami    = "${var.source_ami}"
  ssh_username  = "${var.ssh_username}"
}

build {
  sources = ["source.amazon-ebs.autogenerated_1"]

  provisioner "file" {
    destination = "/tmp/script.sh"
    source      = "script.sh"
  }

  provisioner "shell" {
    inline = ["/tmp/script.sh", "sudo amazon-linux-extras install ansible2"]
  }

  provisioner "ansible-local" {
    playbook_file = "./playbook.yml"
  }

}