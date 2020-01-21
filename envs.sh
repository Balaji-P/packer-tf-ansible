#!/bin/bash

export KEY_JSON=/home/keys/key-packer.json
export REGION=us-east1
export ZONE=us-east1-b
export MACHINE_TYPE=n1-standard-1
export IMAGE_DESCR=packer-image
export SERVER_NAME=staging
# USER in GCP created automatic
export PROJECT=$(gcloud info --format='value(config.project)')
export IMAGE_PACKER=$(gcloud compute images list --format="value(NAME)" --filter=ubuntu-1804)

# TERRAFORM SPECIFIC ENV VARS - EQUAL TO THE ONES ABOVE, JUST NAMED DIFFERENTLY
export TF_VAR_key=${KEY_JSON}
export TF_VAR_server_name=${SERVER_NAME}
export TF_VAR_region=${REGION}
export TF_VAR_zone=${ZONE}
export TF_VAR_machine_type=${MACHINE_TYPE}
export TF_VAR_project=${PROJECT}
export TF_VAR_boot_image=${IMAGE_PACKER}
