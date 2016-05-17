#!/bin/bash

## DOS : Deny Of Service
# block ip on port
# require ufw
# $1 : ip
# $2 : port

ufw insert 1 deny from $1 to any port $2
