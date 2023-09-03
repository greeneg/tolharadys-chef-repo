#!/bin/bash

set -e
set -u
set -o pipefail
set -x


function get_os_family {
  if [[ -f /etc/os-release ]]; then
    # a linux of some sort.
    # currently, I only care about openSuSE or Debian
    if grep -qE "^ID=\"opensuse\-leap\"$" /etc/os-release; then
      echo "sles"
    elif grep -qE "^ID=debian$" /etc/os-release; then
      echo "debian"
    fi
  fi
}

# get the code repo
if [[ "$(get_os_family)" == 'sles' ]]; then
  . /etc/sysconfig/cinc
else
  . /etc/default/cinc
fi

FQDN="$(hostname --fqdn)"
CINC_ENVIRONMENT=$(jq -r .environment "${CINC_CODE_REPO}/node_assignments/${FQDN}.json")
MY_ROLES=
for ROLE in $(jq -r .roles[] "${CINC_CODE_REPO}/node_assignments/${FQDN}.json"); do
  MY_ROLES+="role[$ROLE],"
done

cd $CINC_CODE_REPO
/opt/cinc/bin/cinc-client -z -c /etc/cinc/client.rb -P /run/cinc-zero.pid -E "$CINC_ENVIRONMENT" -l info -r "${MY_ROLES}"

