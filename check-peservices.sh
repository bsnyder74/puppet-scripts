#!/bin/bash

for i in $(systemctl list-unit-files --type service | grep pe- | awk '{print $1}'); do
  echo -e "$i - $(systemctl is-active $i)"
done
