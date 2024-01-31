#!/bin/bash
terraform init
#terraform apply --auto-approve
terraform destroy --auto-apppove
echo "completed"