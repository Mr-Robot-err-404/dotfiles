#!/bin/bash

case "$1" in
    normal)
        padding=10
        ;;
    display)
        padding=40
        ;;
    *)
        echo "Usage: $0 {normal|display}"
        exit 1
        ;;
esac

yabai -m config top_padding "$padding"
