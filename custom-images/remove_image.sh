#!/bin/bash

#
# find images gcloud compute images list |grep dataproc
#
IMAGE_NAME=$1

gsutil rm -r "gs://pvmax-spark-data/log/*"
gsutil rm -r "gs://pvmax-spark-image/*"
gcloud compute images delete ${IMAGE_NAME}
