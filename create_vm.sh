#!/bin/bash

# Simply create a VM with a fixed name, machine type and OS. Here as a basic example.
gcloud compute instances create test-cli-vm1 --machine-type f1-micro --image-family centos-8 --image-project centos-cloud
