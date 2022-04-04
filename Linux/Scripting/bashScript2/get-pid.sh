#!/usr/bin/env bash

# this will help you to get the PID
ps aux | awk '{ if ( == S ||  == D) { print  } }'
