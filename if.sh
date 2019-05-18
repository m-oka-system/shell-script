#!/bin/sh

if [ $1 -gt 90 ]; then
        echo "Great!"
elif [ $1 -gt 80 ]; then
        echo "Good."
else
        echo "so so..."
fi
