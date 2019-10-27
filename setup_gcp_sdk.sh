#!/bin/bash

PYHTON_VERSION=$(python --version)
GCLOUD_VERSION="268.0.0"
GCLOUD_SDK_SRC="google-cloud-sdk-$GCLOUD_VERSION-linux-x86_64.tar.gz"
TEMP_DIR="/home/$USER"

# Prereqs.
if [ "$PYTHON_VERSION" == "Python 2.7.5" ]; then
  echo "Python version $PYTHON_VERSION too old. Need 2.7.9+"
  exit 0
fi

# Download from google.
wget -O- "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$GCLOUD_SDK_SRC" | tar xz -C $TEMP_DIR

# Install and remove unneeded files.
$TEMP_DIR/google-cloud-sdk/install.sh -q
rm -r $TEMP_DIR/google-cloud-sdk

echo ""
echo "Installed GCLOUD $GCLOUD_SDK_SRC"
echo ""
