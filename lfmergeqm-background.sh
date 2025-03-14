#!/bin/sh

# Run lfmergeqm every 24 hours to clean up any failed syncs that aren't in the queue
# This script MUST be run as a background process ("script.sh &")!

while :
do
  sudo -H --preserve-env=CHORUS_HG_EXE -u www-data lfmergeqm
  sleep 86400
done
