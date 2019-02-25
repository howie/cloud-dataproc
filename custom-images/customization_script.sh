#!/bin/bash

# Initialization actions examples:
#
# apt-get -y update
# apt-get install python-dev
# apt-get install python-pip
# pip install numpy

# https://github.com/GoogleCloudPlatform/dataproc-initialization-actions/tree/master/conda

gsutil -m cp -r gs://dataproc-initialization-actions/conda/bootstrap-conda.sh .
gsutil -m cp -r gs://dataproc-initialization-actions/conda/install-conda-env.sh .

chmod 755 ./*conda*.sh

# Install Miniconda / conda
./bootstrap-conda.sh

# Update conda root environment with specific packages in pip and conda
CONDA_PACKAGES='numpy pyspark requests scipy tzlocal python-dateutil'
PIP_PACKAGES='slackclient gpyopt matplotlib'
CONDA_PACKAGES=$CONDA_PACKAGES PIP_PACKAGES=$PIP_PACKAGES ./install-conda-env.sh

