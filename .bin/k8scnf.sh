#!/usr/bin/env zsh

KUBECONFIG_DIR="/tmp/kubeconfig"
SELECTED=$(ls $KUBECONFIG_DIR | fzf)
ln -sf "$KUBECONFIG_DIR/$SELECTED" $HOME/.kube/config
echo "Selected config: $SELECTED"

