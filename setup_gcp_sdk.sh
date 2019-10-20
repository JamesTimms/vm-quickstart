#!/bin/bash

PYHTON_VERSION=$(python --version)
GOOGLE_CLOUD_SDK="google-cloud-sdk-267.0.0-linux-x86_64.tar.gz"

if ["$PYTHON_VERSION" == "Python 2.7.5"]
  echo "Python version $PYTHON_VERSION too old. Need 2.7.9+"
  exit 0;
fi


wget "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$GOOGLE_CLOUD_SDK"
tar -xvzf "$GOOGLE_CLOUD_SDK"

/home/$USER/google-cloud-sdk/install.sh -q
