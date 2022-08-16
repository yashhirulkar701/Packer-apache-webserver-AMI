#  Packer to create AMI image and configure apache webserver in it.  

This project we will create an EC2 instance AMI using Packer and configure Apache Webserver in it using Ansible and Shell provisioners.

- This project gives you clear idea of DevOps tools Packer and Ansible.
- Using easy to to understand Packer and ansible scripts, makes concepts much clear.

## Tech

- [Packer](https://www.packer.io/)
#### Packer is a tool to create identical machine images for multiple platforms from a single source configuration.

- [Ansible](https://www.ansible.com/)
#### Ansible is a radically simple IT automation tool for configuration management that makes your applications and systems easier to deploy and maintain.

## Installation

[Packer Installation](https://www.packer.io/downloads)

[Ansible Installation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Packer Instructions

First make sure [AWS CLI is installed](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and you have [configured authorization](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) properly

After that:

Create a AWS cli profile as a safe practice to use AWS credentials.
Enter profile name in "aws_profile" in ami-build.json file.


```sh
git clone https://github.com/yashhirulkar701/Packer-apache-webserver-AMI.git

cd 'Packer-apache-webserver-AMI'
```

#### To inspect the ami-build.json file
```sh
packer inspect ami-build.json
```

#### To build the image using ami-build.json file
```sh
packer build ami-build.json
```
