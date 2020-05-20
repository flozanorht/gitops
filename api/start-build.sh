#!/bin/bash

# Note that the jenkins user name catenates the user name and its roles inside the project

# whantever is in the environment overrides these settings
export JENKINS_USER_ID=${JENKINS_USER_ID:-fernando-admin-edit-view}
export JENKINS_API_TOKEN=${JENKINS_API_TOKEN:-11d21171156acb92adc0748bf927d7779e}
export JENKINS_URL=${JENKINS_URL:-https://jenkins-new-jenkins.apps.ocp-flozano3.do280.dev.nextcle.com/}

# -S show errors despite -s
# -i shows headers

# still missing a way to trigger scanning for new branches
#curl -sSk -w '%{response_code}\n' -X POST ${JENKINS_URL}/job/apply/indexing \
#  --user ${JENKINS_USER_ID}:${JENKINS_API_TOKEN} \

curl -sSk -w '%{response_code}\n' -X POST ${JENKINS_URL}/job/apply/job/master/build \
  --user ${JENKINS_USER_ID}:${JENKINS_API_TOKEN} \

