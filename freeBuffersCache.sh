#!/usr/bin/env bash

free -m && sync && echo 3 > /proc/sys/vm/drop_caches && free -m
