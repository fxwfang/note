#!/bin/bash

path=post/`date '+%Y/%m/%d'`/$1.md
echo create file: ${path}
hugo new ${path}
