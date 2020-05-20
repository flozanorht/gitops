#!/bin/bash

#XXX Need a way to protect the webhook from DoS. Like a token. Right now it is wide open.
# -S show errors despite -s

curl -sSk -w '%{response_code}\n' ${JENKINS_URL}/git/notifyCommit?url=https://github.com/flozanorht/gitops.git 

