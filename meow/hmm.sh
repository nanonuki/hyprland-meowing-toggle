#!/bin/bash

# Check for argument
if [ $# -eq 0 ]; then
wtype " "
    exit 1
fi

# Get the random number from argument
case $1 in
    1)
        wtype " meow "
        ;;
    2)
        wtype " mrrp "
        ;;
    3)
        wtype " nya "
        ;;
    4)
        wtype " mrow "
        ;;
    5)
        wtype " mroow "
        ;;
    *)
wtype " "
        exit 1
        ;;
esac


