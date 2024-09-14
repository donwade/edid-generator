#!/bin/bash

for HZ in 30 50 60; do
    for FILE in `find . -type f -name  "*-p${HZ}.S" `; do
        echo $FILE
        sed -ibak "s=define VFREQ 60=define VFREQ ${HZ}=" $FILE
    done
done
