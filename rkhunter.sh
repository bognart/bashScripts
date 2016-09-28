#!/bin/bash

( rkhunter --versioncheck
  rkhunter --update
  rkhunter --cronjob --quiet --enable all --disable none --rwo
) | /usr/bin/mail -s "rkhunter report" bognartomi@gmail.com