#!/bin/bash

echo "num:${#}"

case $1 in
  ls*) echo "local server" 
      ssh -p 10022 oacx@10.0.16.153
  ;;
  lp*) echo "local proxy"
      ssh -p 11022 oacx@10.0.16.153
  ;;
  la*) echo "local admin"
      ssh -p 12022 oacx@10.0.16.153
  ;;
  ld*) echo "local demo"
      ssh -p 14022 oacx@10.0.16.153
  ;;
  ss*) echo "staging server"
	  ssh -p 10022 oacx@192.168.0.182
  ;;
  sp*) echo "staging proxy"
	  ssh -p 11022 oacx@192.168.0.182
  ;;
  sa*) echo "staging admin"
	  ssh -p 12022 oacx@192.168.0.182
  ;;
  sd*) echo "staging demo"
	  ssh -p 14022 oacx@192.168.0.182
  ;;
  ts*) echo "testing server"
	  ssh -p 20022 oacx@192.168.0.182
  ;;
  tp*) echo "testing proxy"
	  ssh -p 21022 oacx@192.168.0.182
  ;;
  ta*) echo "testing admin"
	  ssh -p 22022 oacx@192.168.0.182
  ;;
  td*) echo "testing demo"
	  ssh -p 24022 oacx@192.168.0.182
  ;;
  *) echo "invalid case : ${1}"
esac
