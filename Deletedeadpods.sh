#!/bin/bash

# Date: 04/18/2017
#
# Script Purpose: Cleanup completed or dead pods
# Version       : 1.0
#


  #Delete all Error, Completed, DeadlineExceeded, or ContainerCannotRun pods.
  oc get pods --all-namespaces --no-headers | awk '$4 == "Error" \
    || $4 == "Completed" \
    || $4 == "DeadlineExceeded" \
    || $4 == "ContainerCannotRun" \
    {system("bash -c '\''oc delete pod -n "$1" "$2" '\''")}'

  #Force kill any hanging pods
  oc get pods --no-headers | awk '$4 == "Terminating" \
    {system("bash -c '\''oc delete pod -n "$1" "$2" --grace-period=0 '\''")}'

  exit 0
