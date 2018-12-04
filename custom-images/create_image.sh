#!/usr/bin/env bash 
# https://cloud.google.com/dataproc/docs/release-notes

python generate_custom_image.py \
  --image-name pyspark-with-conda-v2-365 \
  --dataproc-version 1.3.5-deb9 \
  --customization-script customization_script.sh \
  --daisy-path ~/bin/daisy \
  --zone asia-east1-b \
  --gcs-bucket gs://pvmax-spark-image \
  --expire-day 365

