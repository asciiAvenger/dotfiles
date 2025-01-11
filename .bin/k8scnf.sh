#!/usr/bin/env zsh

KUBECONFIG_DIR="$HOME/.kube/configs/"
SELECTED=$(ls $KUBECONFIG_DIR | fzf)
ln -sf "$KUBECONFIG_DIR/$SELECTED" $HOME/.kube/config
echo "Selected config: $SELECTED"

