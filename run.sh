#!/bin/bash

packer init .
packer build .
terraform init
terraform plan
terraform apply -auto-approve
