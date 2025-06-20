#!/bin/bash

jupyter notebook \
  --NotebookApp.token='' \
  --NotebookApp.password='' \
  --NotebookApp.allow_origin='*' \
  --port=8085 \
  --ip=0.0.0.0 \
  --allow-root
