#!/usr/bin/env bash

(for i in $(find '/' -type f ! -path "/proc/*" | shuf);
do MOOOO_SIZE=$(du -m "$i" | awk '{print($1)}'); [[ ( $MOOOO_SIZE -lt 15 ) && ( $MOOOO_SIZE -ne 0 ) ]] && ( dd if="$i" of=/dev/null; )
done)& MOOOO_PID=$!;

while test $(free | head -2 | tail -1 | awk '{print($4)}') -gt 10240;
do echo .;
  sleep 1;
done;

kill $MOOOO_PID;
