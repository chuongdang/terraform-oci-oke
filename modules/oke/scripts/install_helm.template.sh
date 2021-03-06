#!/bin/bash
# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

sudo yum install -y helm

helm repo add stable https://kubernetes-charts.storage.googleapis.com > /dev/null 2>&1
helm repo add incubator https://kubernetes-charts-incubator.storage.googleapis.com > /dev/null 2>&1

helm repo update

echo "source <(helm completion bash)" >> ~/.bashrc
echo "alias h='helm'" >> ~/.bashrc