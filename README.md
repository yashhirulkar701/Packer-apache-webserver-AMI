#  Packer to create AMI image and configure apache webserver in it.  

![SWUbanner](https://imgs.search.brave.com/Ri5ZCZEfYFL74u1lS_7D7t_YBhmbS7TjHRG6o3016Q8/rs:fit:1200:644:1/g:ce/aHR0cHM6Ly9taXJv/Lm1lZGl1bS5jb20v/bWF4LzM4NDIvMSpY/Q1BqZDRUQnkybWFl/enlxQUVLdnVnLnBu/Zw)

##

![Terraform Open Source Modules](https://docs.cloudposse.com/images/terraform-open-source-modules.svg)

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
