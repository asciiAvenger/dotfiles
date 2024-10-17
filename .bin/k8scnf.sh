#!/bin/bash

export KUBECONFIG=$(ls /tmp/kubeconfig | fzf)

