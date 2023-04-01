#!/bin/bash

export AWS_ACCESS_KEY_ID=$(VAR_FROM_PIPELINE_ID)
export AWS_SECRET_ACCESS_KEY=$(VAR_FROM_PIPEINE_PASS)

terraform init

terraform plan -out plan

terraform apply "plan"

#I would now get the credentials to that machine i just created. Then exectute the ansible playbook against the machine to install than run my docker images.